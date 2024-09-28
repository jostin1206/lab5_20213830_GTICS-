package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="sedes")
public class Sedes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idSedes")
    private int id;

    @Column(name="nombreSede")
    private String nombre;
}
