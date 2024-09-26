package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="Fechas")
public class Fechas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idFechas")
    private int id;

    @Column(name="fechaDisponibildad")
    private int fechaDisponibilidad;

    @ManyToOne
    @JoinColumn(name = "idProfesional")
    private Profesionales profesionales;


}
