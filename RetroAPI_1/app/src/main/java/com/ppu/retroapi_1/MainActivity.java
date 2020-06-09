package com.ppu.retroapi_1;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

import okhttp3.ResponseBody;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import android.util.Log;

import java.io.IOException;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.ipify.org/")
                .build();

        //Faq faq = retrofit.create(Faq.class);
        //faq.getFaq().enqueue(new Callback<ResponseBody>() {

        Api api = retrofit.create(Api.class);
        api.getIp().enqueue(new Callback<ResponseBody>() {

            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    Log.d("RetroStart", response.body().string());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {

            }
        });
    }


    interface Api {
        @GET("/")
        Call<ResponseBody> getIp();
    }

    interface Faq {
        @GET("/")
        Call<Readable> getFaq();
    }
}
