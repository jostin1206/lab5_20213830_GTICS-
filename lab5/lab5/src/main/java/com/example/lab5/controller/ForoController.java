package com.example.lab5.controller;

import com.example.lab5.entity.Foro;
import com.example.lab5.repository.ForoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ForoController {

    private final ForoRepository foroRepository;

    public ForoController(ForoRepository foroRepository) {
        this.foroRepository = foroRepository;
    }

    @GetMapping(value = {"/foro/lista"})
    public String listaForos(Model model) {
        model.addAttribute("listaForos", foroRepository.findAll());
        model.addAttribute("nuevoComentario", new Foro());
        return "Foro/foro";
    }
    @PostMapping(value = {"/foro/enviar"})
    public String enviarComentario(Foro comentario, RedirectAttributes redirectAttributes) {

        redirectAttributes.addFlashAttribute("mensaje", "Comentario publicado exitosamente.");
        foroRepository.save(comentario);
        return "redirect:/foro/lista";
    }
}
