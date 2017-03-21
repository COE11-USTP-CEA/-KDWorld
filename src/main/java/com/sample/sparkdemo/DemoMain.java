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
        

        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","KDWORLD");
            
            return render(model, "index.ftl");
        });
    

        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("forms", "Share Your Playlist");
            return render(model, "add.ftl");
        });


        post("/add", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String artist = request.queryParams("artist");
            String name = request.queryParams("name");

            Song song = new Song();
            song.setArtist(artist);
            song.setName(name);

            playlist.add(song);

            model.put("title", "New Song");
            model.put("song", song);
            // response.redirect("/show/"+code);
            // return "";
            return render(model, "success.ftl");
        });


        // get("/delete/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.deleteItemByCode(code);
            
        //     model.put("title", "Delete Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "delete.ftl");
        // });

        get("/delete/:name", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String name = request.params(":name");
            Song song = playlist.findSong(name);
            
            model.put("title", "Delete Item");
            model.put("song", song);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "delete.ftl");
        });

        post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String name = request.queryParams("name");
            Song song = playlist.findSong(name);
            playlist.deleteSong(name);
            
            model.put("title", "Deleted Item");
            model.put("song", song);
            return render(model, "deleted.ftl");
        });




        get("/edit/:name", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String name = request.params(":name");
            Song song = playlist.findSong(name);
            
            model.put("title", "Edit name");
            model.put("song", song);
            return render(model, "edit.ftl");
        });

        post("/edit", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String name = request.queryParams("name");
            String artist = request.queryParams("artist");

            Song song = playlist.updateSong(artist,name);


            model.put("title", "Song Updated");
            model.put("song", song);
            return render(model, "list.ftl");
        });


        get("/show/:name", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String name = request.params(":name");
            Song song = playlist.findSong(name);
            
            model.put("title", "View Song");
            model.put("song", song);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "success.ftl");
        });


        get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List of Songs");
            model.put("playlist", playlist.all());
            return render(model, "list.ftl");
        });


    }

}
