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

    public Song deleteSong(String code){
        for (Song song : playlist){
            if(code.equals(song.name)){

            playlist.remove(song);
            
          }

    };
  return null;

} 


    public Song findSong(String code){
        for (Song song : playlist){
            if(code.equals(song.name)){
                
                return song;
            }
    };
    return null;
}

}