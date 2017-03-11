package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Song;
import com.sample.sparkdemo.model.Playlist;

import java.util.HashMap;
import java.util.Map;
import java.util.*;
import java.util.ArrayList;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

    public static String render( Map<String, Object> model, String template){
        return new FreeMarkerEngine().render( new ModelAndView(model, template) );
    }; 

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files

        Playlist playlist = new Playlist();

        
        get("/index", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title","KDWORLD");
            return render(model, "index.ftl");

        });


        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("add", "Add Songs");
            return render(model, "add.ftl");
        });


     post("/add", (req,res) -> {
            Map<String, Object> model = new HashMap<>();
                String song = req.queryParams("song");
                String artist = req.queryParams("artist");

                //Song song = new Song();
                // song.setName(name);
                // song.setArtist(artist);

                //playlist.add(song);
            
            model.put("song", song);
            model.put("artist", artist);
            return render(model, "success.ftl");
        });

    get("/playlist", (req, res) -> {
        Map<String, Object> model = new HashMap<>();
        
        model.put("title", "Your Playlist");
        model.put("playlist", playlist.all());
        return render(model, "list.ftl");
        });
    }

}
