package com.example.a043_setamurdha_a_recyclerview;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
public class MainActivity extends AppCompatActivity {
    private RecyclerView recyclerView;
    private mahasiswaadapter adapter;
    private ArrayList<Mahasiswa> MahasiswaArrayList;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        addData();
        recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        adapter = new mahasiswaadapter(MahasiswaArrayList);
        RecyclerView.LayoutManager layoutManager = new LinearLayoutManager(MainActivity.this);
        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setAdapter(adapter);
    }

    void addData(){
        MahasiswaArrayList = new ArrayList<>();
        MahasiswaArrayList.add(new Mahasiswa("Fany Parama Admaja", "18650036", "083144290139"));
        MahasiswaArrayList.add(new Mahasiswa("Kurnia Zulda Matondang", "18650044", "081373275136"));
        MahasiswaArrayList.add(new Mahasiswa("Yusuf Ansori", "18650042", "081341254146"));
        MahasiswaArrayList.add(new Mahasiswa("Seta Murdha Pamungkas", "18650043", "081312867218"));
    }
}