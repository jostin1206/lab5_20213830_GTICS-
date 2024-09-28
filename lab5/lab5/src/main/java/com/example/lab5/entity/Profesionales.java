package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
@Table(name="profesionales")
public class Profesionales {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idProfesionales")
    private int idProfesional;

    @Column(name="nombre")
    private String nombreProfesional;

    @Column(name="imagen")
    private String imagen;

    @Column(name="descripcionProfesional")
    private String descripcion;

    @ManyToOne
    @JoinColumn(name = "idSede")
    private Sedes sedes;
    @ManyToOne
    @JoinColumn(name = "idArea")
    private Areas areas;

    // Relación con fechas disponibles, se investigó de ello :v
    @OneToMany(mappedBy = "profesionales", cascade = CascadeType.ALL)
    private List<Fechas> fechasDisponibles;
}
