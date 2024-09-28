package com.example.lab5.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="citas")
public class Citas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idCitas")
    private int idCitas;
    @Column(name = "motivoConsulta")
    private String motivo;
    @ManyToOne
    @JoinColumn(name = "idSede")
    private Sedes sedes;
    @ManyToOne
    @JoinColumn(name = "idArea")
    private Areas areas;
    @ManyToOne
    @JoinColumn(name = "idProfesional")
    private Profesionales profesionales;
    @ManyToOne
    @JoinColumn(name = "idPaciente")
    private Paciente paciente;

    @ManyToOne
    @JoinColumn(name = "idRiesgo" , nullable = false)
    private Riesgos riesgos;

    @ManyToOne
    @JoinColumn(name = "idFechaConsulta")
    private Fechas fechas;
}
