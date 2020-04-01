package com.example.family_house;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


import androidx.appcompat.app.AppCompatActivity;




public class SettingsActivity extends AppCompatActivity {
    public Button button10;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setContentView(R.layout.settings_main);
        super.onCreate(savedInstanceState);
        button10 = (Button) findViewById(R.id.button10);
        button10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(SettingsActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }
}