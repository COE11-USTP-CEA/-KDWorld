package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files
        
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title","KDWORLD");
            return new ModelAndView(model, "index.ftl"); // located in src/test/resources/spark/template/freemarker
        }, new FreeMarkerEngine());


        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("add", "Add Songs");
            return new ModelAndView(model, "add.ftl");
        }, new FreeMarkerEngine());


     post("/add", (req,res) -> {
                String song,artist;

                song = req.queryParams("songname");
                artist = req.queryParams("artistname");
            
            Map<String, Object> model = new HashMap<>();
            model.put("song", song);
            model.put("artist", artist);
            return new ModelAndView(model, "success.ftl");
        }, new FreeMarkerEngine());
    }
}
