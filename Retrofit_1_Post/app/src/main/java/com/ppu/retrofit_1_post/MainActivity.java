package com.ppu.retrofit_1_post;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import java.io.IOException;

import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import okhttp3.ResponseBody;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://jsonplaceholder.typicode.com/")
                .build();

        Api api = retrofit.create(Api.class);


        String postmsg = "{\n" +
                "\t\t\"id\": 900,\n" +
                "\t\t\"name\": \"Bob Phillips\"\n" +
                "}";

        /*
        JSON Code that we want to use
          {
            "id": 900,
            "name": "Bob Phillips"
          }
          */
        //Request the body
        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json"), postmsg);

        api.postUser(requestBody).enqueue(new Callback<ResponseBody>() {

            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    Log.d("PostExample", response.body().string());
                } catch (IOException e){
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {

            }
        });














    }
}
