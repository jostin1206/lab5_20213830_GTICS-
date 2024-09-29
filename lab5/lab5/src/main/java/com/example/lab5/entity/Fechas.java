package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name="fechas")
public class Fechas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idFechas")
    private int id;

    @Column(name="fechaDisponibilidad")
    private LocalDate fechaDisponibilidad;

    @ManyToOne
    @JoinColumn(name = "idProfesional")
    private Profesionales profesionales;


}
