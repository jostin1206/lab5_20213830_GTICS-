package com.example.lab5.controller;

import com.example.lab5.repository.ProfesionalRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfesionalController {

    final ProfesionalRepository profesionalRepository;

    public ProfesionalController(ProfesionalRepository profesionalRepository) {

        this.profesionalRepository = profesionalRepository;
    }


    @GetMapping(value = {"/profesionales/lista", "/"})
    public String listaProfesionales(Model model) {
        model.addAttribute("listaProfesionales", profesionalRepository.findAll());
        return "Profesionales/profesionales";
    }

}
