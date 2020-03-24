package com.example.family_house;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Spinner;


import androidx.appcompat.app.AppCompatActivity;

public class EventActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.events_main);

        Spinner mySpinner = (Spinner) findViewById(R.id.places);

        ArrayAdapter<String> myAdapter = new ArrayAdapter<String>(EventActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.places));
        myAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mySpinner.setAdapter(myAdapter);
    }
}