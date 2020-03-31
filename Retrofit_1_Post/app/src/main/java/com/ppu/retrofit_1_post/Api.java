package com.ppu.retrofit_1_post;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface Api {

    //Get and Posts located here
    @GET("/posts")
    Call<ResponseBody> getPosts();

    @GET("/users")
    Call<ResponseBody> getUsers();

    @POST("/users/")
    Call<ResponseBody> postUser(@Body RequestBody requestBody);

}
