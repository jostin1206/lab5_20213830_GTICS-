package com.example.lab5.controller;

import com.example.lab5.repository.CitasRepository;
import com.example.lab5.repository.PacienteRepository;
import com.example.lab5.repository.RiesgoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PacientesController {

    private final PacienteRepository pacienteRepository;
    private final RiesgoRepository riesgoRepository;
    private final CitasRepository citasRepository;

    public PacientesController(PacienteRepository pacienteRepository,
                               RiesgoRepository riesgoRepository,
                               CitasRepository citasRepository) {
        this.pacienteRepository = pacienteRepository;
        this.riesgoRepository = riesgoRepository;
        this.citasRepository = citasRepository;
    }

    @GetMapping(value = {"/pacientes/lista"})
    public String listaPacientes(Model model) {
        model.addAttribute("listaPacientes", pacienteRepository.findAll());
        model.addAttribute("listaRiesgos", riesgoRepository.findAll());
        model.addAttribute("listaCitas", citasRepository.findAll());
        model.addAttribute("pacientesRiesgo", pacienteRepository.obtenerPacientesPorRiesgo());
        return "Pacientes/lista_pacientes";
    }
}
