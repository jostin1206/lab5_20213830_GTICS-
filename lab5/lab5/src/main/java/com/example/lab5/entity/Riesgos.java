package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="riesgos")
public class Riesgos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name="idRiesgos")
    private int idRiesgos;
    @Column(name="nombreriesgo")
    private String nombreRiesgo;
}
