package com.example.family_house;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;


import androidx.appcompat.app.AppCompatActivity;

import java.io.IOException;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.Retrofit;

public class EventActivity extends AppCompatActivity {
    public Button button9;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setContentView(R.layout.events_main);
        super.onCreate(savedInstanceState);
        button9 = (Button) findViewById(R.id.button9);
        button9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(EventActivity.this,MainActivity.class);
                startActivity(intent);
            }
        });


        Spinner mySpinner = (Spinner) findViewById(R.id.places);

        ArrayAdapter<String> myAdapter = new ArrayAdapter<String>(EventActivity.this,
                android.R.layout.simple_list_item_1, getResources().getStringArray(R.array.places));
        myAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mySpinner.setAdapter(myAdapter);
    }}




            //  Retrofit retrofit = new Retrofit.Builder()
            //        .baseUrl("rstruff.it.pointpark.edu:3000\t")
            //      .build();
            // Events events = retrofit.create(Events.class);
            //events.getEvents().enqueue(new Callback<ResponseBody>(){

            //@Override
            //public void onResponse (Call < ResponseBody > call, Response < ResponseBody > response){
            //  try {
            //    Log.d("RetroStart", response.body().string());
            // } catch (IOException e) {
            //    e.printStackTrace();

        //}

        //@Override
        //public void onFailure (Call < ResponseBody > call, Throwable t){

        //}
        //});
        // }
        //interface Events {
        //  @GET("/")
        // Call<ResponseBody> getEvents();
        //}
