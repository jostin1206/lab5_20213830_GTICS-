package com.example.lab5.controller;

import com.example.lab5.entity.*;
import com.example.lab5.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.chrono.ChronoLocalDate;
import java.util.List;

@Controller
public class CitasController {

    private final SedesRepository sedesRepository;
    private final AreasRepository areasRepository;
    private final CitasRepository citasRepository;
    private final FechasRepository fechasRepository;
    private final ProfesionalRepository profesionalRepository;
    private final RiesgoRepository riesgoRepository;
    private final PacienteRepository pacienteRepository;

    public CitasController(SedesRepository sedesRepository,
                           AreasRepository areasRepository,
                            CitasRepository citasRepository,
                           FechasRepository fechasRepository,
                           ProfesionalRepository profesionalRepository,
                           RiesgoRepository riesgoRepository,
                           PacienteRepository pacienteRepository) {
        this.sedesRepository = sedesRepository;
        this.areasRepository = areasRepository;
        this.citasRepository = citasRepository;
        this.fechasRepository = fechasRepository;
        this.profesionalRepository = profesionalRepository;
        this.riesgoRepository = riesgoRepository;
        this.pacienteRepository = pacienteRepository;
    }

    @GetMapping(value = {"/citas/lista", "/"})
    public String listaCitas(Model model) {
        model.addAttribute("listaCitas", citasRepository.findAll());
        model.addAttribute("citasArea", citasRepository.obtenerCitasPorArea());
        model.addAttribute("citasProfesional", citasRepository.obtenerCitasPorProfesional());
        model.addAttribute("citasSede", citasRepository.obtenerCitasPorSede());

        return "Citas/lista_cita";
    }
    @GetMapping("/cita/nuevo")
    public String nuevaCita(Model model) {
        //model.addAttribute("citas", new Citas());
        Citas nuevaCita = new Citas();

        // Inicializa el objeto profesionales
        nuevaCita.setProfesionales(new Profesionales());
        nuevaCita.setSedes(new Sedes());
        nuevaCita.setRiesgos(new Riesgos());
        model.addAttribute("citas", nuevaCita);
        List<Profesionales> profesionalesList = profesionalRepository.findAll();
        model.addAttribute("listaProfesionales", profesionalesList);
        model.addAttribute("listaSedes", sedesRepository.findAll());
        model.addAttribute("listaAreas", areasRepository.findAll());
        model.addAttribute("listaFechas", fechasRepository.findAll());
        //model.addAttribute("listaProfesionales", profesionalRepository.findAll());
        model.addAttribute("listaRiesgos", riesgoRepository.findAll());

        return "Citas/registro_cita";
    }

    @PostMapping("/cita/guardar")
    public String guardarCita(Citas citas, RedirectAttributes attr) {

        //Profesionales profesional = profesionalRepository.findById(citas.getProfesionales().getIdProfesional()).orElse(null);
        // Crear o encontrar al paciente dentro de la entidad Citas
        if (citas.getPaciente() == null) {
            citas.setPaciente(new Paciente());
        }

        Paciente paciente = citas.getPaciente(); // Asume que el formulario ya está mapeado correctamente
        paciente.setRiesgos(citas.getRiesgos());
        // Guardar el paciente en la base de datos
        pacienteRepository.save(paciente);
        Profesionales profesionales = profesionalRepository.findById(citas.getProfesionales().getIdProfesional()).orElse(null);


        if (profesionales.getAreas().getIdAreas() != citas.getAreas().getIdAreas()){
            attr.addFlashAttribute("error", "El profesional no coincide con su área de especialidad,vuelva a llenar los datos.");
            return "redirect:/cita/nuevo";
        }

        if (profesionales.getSedes().getId() != citas.getSedes().getId()) {
            attr.addFlashAttribute("error", "El profesional no está disponible en la sede seleccionada,vuelva a llenar los datos.");
            return "redirect:/cita/nuevo";
        }

        // Verificar que el profesional esté disponible en la fecha seleccionada
        boolean fechaDisponible = profesionales.getFechasDisponibles().stream()
                .anyMatch(fecha -> fecha.getFechaDisponibilidad().isEqual(citas.getFechas().getFechaDisponibilidad()));

        if (!fechaDisponible) {
            attr.addFlashAttribute("error", "El profesional no está disponible en la fecha seleccionada,vuelva a llenar los datos.");
            return "redirect:/cita/nuevo";
        }

        citasRepository.save(citas);
        attr.addFlashAttribute("msg", "Cita registrada exitosamente.");
        return "redirect:/profesionales/lista";
    }
}
