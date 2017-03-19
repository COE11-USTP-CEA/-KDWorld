package com.sample.sparkdemo.model;
import java.util.ArrayList;

public class Song{

    public String name, artist;

    public void setName(String name){
        this.name = name;
    }

    public void setArtist(String artist){
        this.artist = artist;
    }

    public String getName(){
        return name;
    }

    public String getArtist(){
        return artist;
    }
}