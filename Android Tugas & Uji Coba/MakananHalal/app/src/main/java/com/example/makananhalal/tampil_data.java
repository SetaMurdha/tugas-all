package com.example.makananhalal;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.widget.Toolbar;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;


public class tampil_data extends AppCompatActivity {

    ArrayList<DataObjek>list;
    ListView listView;
    Toolbar toolbar;
    @SuppressLint("RestrictedApi")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.tampil_data);
        toolbar = findViewById(R.id.toolbar);
        listView=findViewById(R.id.listview);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDefaultDisplayHomeAsUpEnabled(true);
        tampil_data();

    }


    void tampil_data(){

        list = new ArrayList<>();
        String url = "https://18650043seta.000webhostapp.com/select.php";
        StringRequest request = new StringRequest(Request.Method.POST,
                url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject jsonObject = new JSONObject(response);
                            JSONArray jsonArray = jsonObject.getJSONArray("data");
                            for(int i=0; i<jsonArray.length(); i++){
                                JSONObject getData = jsonArray.getJSONObject(i);
                                String idMakanan=getData.getString("idMakanan");
                                String NamaMakanan = getData.getString("Nama");
                                String MasaTahan = getData.getString("MasaTahan");
                                list.add(new DataObjek(idMakanan,NamaMakanan,MasaTahan));
                            }
                            Adapter adapter = new Adapter(tampil_data.this, list);
                            listView.setAdapter(adapter);
                            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                                @Override
                                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

                                }
                            });
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                }
        );
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(request);
    }

    @Override
    public void onBackPressed() {
        startActivity(new Intent(getApplicationContext(), MainActivity.class));
        super.onBackPressed();
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return super.onSupportNavigateUp();
    }
}


class Adapter extends BaseAdapter {
    Context context;
    LayoutInflater inflater;
    ArrayList<DataObjek> model;
    public Adapter(Context context, ArrayList<DataObjek>model){
        inflater = LayoutInflater.from(context);
        this.context=context;
        this.model = model;
    }

    @Override
    public int getCount() {
        return model.size();
    }

    @Override
    public Object getItem(int position) {
        return model.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    Button lihat, edit, hapus;

    TextView NamaMakanan, MasaTahan;
    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        View view = inflater.inflate(R.layout.list_data, parent, false);
        lihat = view.findViewById(R.id.lihat);
        edit = view.findViewById(R.id.edit);
        hapus = view.findViewById(R.id.hapus);
        NamaMakanan=view.findViewById(R.id.NamaMakanan);
        MasaTahan=view.findViewById(R.id.MasaTahan);

        NamaMakanan.setText(model.get(position).getNamaMakanan());
        MasaTahan.setText(model.get(position).getMasaTahan());

        lihat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context,
                        Lihat_data.class
                );
                intent.putExtra("NamaMakanan", model.get(position).getNamaMakanan());
                intent.putExtra("MasaTahan", model.get(position).getMasaTahan());
                context.startActivity(intent);
            }
        });

        edit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intentx = new Intent(context,
                        Edit_data.class
                );
                intentx.putExtra("idMakanan",model.get(position).getIdMakanan());
                intentx.putExtra("NamaMakanan", model.get(position).getNamaMakanan());
                intentx.putExtra("MasaTahan", model.get(position).getMasaTahan());
                context.startActivity(intentx);
            }
        });
        hapus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hapus_data(model.get(position).getIdMakanan());

            }
        });
        return view;
    }

    void hapus_data(String idMakanan){
        String url = "https://18650043seta.000webhostapp.com/delete.php?idMakanan="+idMakanan ;
        StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject jsonObject = new JSONObject(response);
                            String status = jsonObject.getString("status");
                            if (status.equals("data_terhapus")) {
                                Toast.makeText(context, "Data Berhasil dihapus", Toast.LENGTH_SHORT).show();
                                context.startActivity(new Intent(context, tampil_data.class));
                            } else {
                                Toast.makeText(context, "Data gagal dihapus", Toast.LENGTH_SHORT).show();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                }
        );
        RequestQueue requestQueue = Volley.newRequestQueue(context);
        requestQueue.add(stringRequest);
    }

}