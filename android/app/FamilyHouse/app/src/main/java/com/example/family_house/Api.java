package com.example.family_house;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface Api {
    //Get and post located here
    @GET("/posts")
    Call<ResponseBody> getPosts();

    @GET("/users")
    Call<ResponseBody> getUsers();

    @POST("/users/")
    Call<ResponseBody> postUsers(@Body ResponseBody requestBody);

}
