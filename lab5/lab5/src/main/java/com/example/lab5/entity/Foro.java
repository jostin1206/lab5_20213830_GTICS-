package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "foro")
public class Foro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idForo")
    private int idForo;

    @Column(name = "comentario")
    private String comentario;

    @Column(name = "nombrePersona")
    private String nombrePersona;
    @Column(name = "edad")
    private int edad;

}