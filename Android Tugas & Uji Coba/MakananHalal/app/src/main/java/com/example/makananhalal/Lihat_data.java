package com.example.makananhalal;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;

public class Lihat_data extends AppCompatActivity {

    Toolbar toolbar;
    TextView Nama, MasaTahan;
    @SuppressLint("RestrictedApi")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.lihat_data);
        toolbar=findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDefaultDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        Nama=findViewById(R.id.NamaMakanan);
        MasaTahan=findViewById(R.id.MasaTahan);

        Nama.setText(getIntent().getStringExtra("Nama"));
        MasaTahan.setText(getIntent().getStringExtra("MasaTahan"));

    }

    @Override
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return super.onSupportNavigateUp();
    }
}