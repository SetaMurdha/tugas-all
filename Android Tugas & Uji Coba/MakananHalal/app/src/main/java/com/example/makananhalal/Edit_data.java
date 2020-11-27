package com.example.makananhalal;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class Edit_data extends AppCompatActivity {

    EditText namaMakanan, MasaTahan;
    Button simpan_data;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.edit_data);

        namaMakanan = findViewById(R.id.NamaMakanan);
        MasaTahan = findViewById(R.id.MasaTahan);

        namaMakanan.setText((getIntent().getStringExtra("NamaMakanan")));
        MasaTahan.setText((getIntent().getStringExtra("MasaTahan")));

        simpan_data = findViewById(R.id.simpan_data);
        simpan_data.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                edit_data();
            }
        });
    }
    void edit_data(){
        String url = "https://18650043seta.000webhostapp.com/update.php";
        StringRequest respon = new StringRequest(
                Request.Method.POST,
                url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject jsonObject = new JSONObject(response);
                            String status = jsonObject.getString("status");
                            if(status.equals("oke")){
                                AlertDialog.Builder builder = new AlertDialog.Builder(Edit_data.this);
                                builder.setTitle("Sukses");
                                builder.setMessage("Data Update");
                                builder.setPositiveButton("Oke", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        finish();
                                    }
                                });
                                AlertDialog dialog = builder.create();
                                dialog.show();
                            }
                            else{

                                AlertDialog.Builder builder = new AlertDialog.Builder(Edit_data.this);
                                builder.setTitle("Sukses");
                                builder.setMessage("Gagal Update");
                                builder.setPositiveButton("ok", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                    }
                                });
                                AlertDialog dialog = builder.create();
                                dialog.dismiss();

                            }
                        } catch (JSONException e){
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(getApplicationContext(), error.getMessage(), Toast.LENGTH_LONG).show();
            }
        }
        ){
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String, String> form = new HashMap<>();
                form.put("idMakanan", getIntent().getStringExtra("idMakanan"));
                form.put("Nama", namaMakanan.getText().toString());
                form.put("MasaTahan", MasaTahan.getText().toString());
                return form;
            }
        };
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(respon);
    }
}