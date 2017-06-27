package pt.factsandit.devops.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;



@Controller
public class Movies {

    @GetMapping(path = "/movies")
    public String getProducts(Model model){

        model.addAttribute("movies", Arrays.asList("Braveheart","Matrix", "V for Vendetta"));
        return "movies";
    }


}
