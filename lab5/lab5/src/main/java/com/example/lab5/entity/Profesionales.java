package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="Profesionales")
public class Profesionales {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idProfesionales")
    private int idProfesional;

    @Column(name="nombre")
    private String nombreProfesional;

    @Column(name="imagen")
    private String imagen;

    @Column(name="descripcioProfesional")
    private String descripcion;

    @ManyToOne
    @JoinColumn(name = "idSede")
    private Sedes sedes;
    @ManyToOne
    @JoinColumn(name = "idArea")
    private Areas areas;
}
