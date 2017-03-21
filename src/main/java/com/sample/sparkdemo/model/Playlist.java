package com.sample.sparkdemo.model;

import java.util.ArrayList;
import com.sample.sparkdemo.model.Song;

public class Playlist {

    ArrayList<Song> playlist = new ArrayList<Song>();

    public ArrayList<Song> all(){
        return playlist;
    }
    
    public void add(Song song){
        playlist.add(song);

    }

    public Song updateSong(String name, String artist){
        for (Song song : playlist ) {
            if ( name.equals(song.name)) {
                song.setName(name);
                return song;
            }
        };
        return null;
    }

    public Song deleteSong(String name){
        for (Song song : playlist ) {
            if ( name.equals(song.name)) {
                playlist.remove(song);
                return null;
            }
        };
        return null;
    }


   public Song findSong(String name){
        for (Song song : playlist ) {
            if (name.equals(song.name) ) {
                return song;
            }
        };
        return null;
    }

}