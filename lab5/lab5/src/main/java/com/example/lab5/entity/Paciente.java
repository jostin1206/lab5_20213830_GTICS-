package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="pacientes")
public class Paciente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idPacientes")
    private int idPaciente;
    @Column(name="nombrePaciente")
    private String nombre;
    @Column(name="DNI")
    private String dni;
    @Column(name="Edad")
    private int edad;

    @ManyToOne
    @JoinColumn(name = "riesgos_idRiesgos")
    private Riesgos riesgos;
}
