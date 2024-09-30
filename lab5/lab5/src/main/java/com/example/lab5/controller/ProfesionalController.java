package com.example.lab5.controller;

import com.example.lab5.entity.Profesionales;
import com.example.lab5.repository.AreasRepository;
import com.example.lab5.repository.ProfesionalRepository;
import com.example.lab5.repository.SedesRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProfesionalController {

    final ProfesionalRepository profesionalRepository;
    private final AreasRepository areasRepository;
    private final SedesRepository sedesRepository;

    public ProfesionalController(ProfesionalRepository profesionalRepository,
                                 AreasRepository areasRepository,
                                 SedesRepository sedesRepository) {

        this.profesionalRepository = profesionalRepository;
        this.areasRepository = areasRepository;
        this.sedesRepository = sedesRepository;
    }


    @GetMapping(value = {"/profesionales/lista"})
    public String listaProfesionales(Model model) {
        model.addAttribute("listaProfesionales", profesionalRepository.findAll());
        return "Profesionales/profesionales";
    }

}
