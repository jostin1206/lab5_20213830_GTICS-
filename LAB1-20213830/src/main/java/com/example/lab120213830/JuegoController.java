package com.example.lab120213830;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller

public class JuegoController {

    @RequestMapping(value = "/configuracion", method = RequestMethod.GET)

    //responseBody es para retornar solo la palabra
    public String configuracion(Model model) {
        Configuracion configuracion = new Configuracion();
        model.addAttribute("configuracion", new Configuracion() );

        return "configuracion";
    }

    // Mapea la ruta "/holaMundo" al método holaMundo

    @RequestMapping(value = "/guardarConfiguracion", method = RequestMethod.POST)
    public String guardarConfiguracion(@ModelAttribute Configuracion configuracion, Model model ,
                                       @RequestParam("longitud") String longitud,
                                       @RequestParam("numMax")  Integer numMax,
                                       @RequestParam("tema") String tema) {

        Configuracion configuracion1 = new Configuracion();
        model.addAttribute("configuracion", configuracion1);
        return "guardarConfiguracion";
    }


    @RequestMapping(value = "/juego", method = RequestMethod.GET)
    public String juego(Model model) {
        // Retorna el nombre de la vista "hola"
        return "juego";
    }

}
