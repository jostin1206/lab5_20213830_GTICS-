package com.example.lab5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping(value = {"/","/inicio"})
    public String Inicio() {

        return "fragments/header";
    }
}
