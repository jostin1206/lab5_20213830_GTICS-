package com.example.lab120213830;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller

public class JuegoController {
    public String mostrarFormulario(Modelo modelo) {
        modelo.addAttribute("juegoConfig", new JuegoConfig());
        return "configurarJuego";
    }

    @PostMapping("/guardarConfiguracion")
    public String guardarConfiguracion(@ModelAttribute JuegoConfig juegoConfig, Model model) {
        // Lógica para seleccionar la palabra aleatoria basada en la configuración
        // y configurar el juego (esto se explica más abajo)
        return "jugar";
    }
}
