package com.example.lab5.repository;

import com.example.lab5.dto.CitasPorAreaDto;
import com.example.lab5.dto.CitasPorProfesionalDto;
import com.example.lab5.dto.CitasPorSedeDto;
import com.example.lab5.entity.Citas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CitasRepository extends JpaRepository<Citas, Integer> {

    @Query(value = "SELECT p.nombre AS nombreProfesional, COUNT(c.idCitas) AS totalCitas " +
            "FROM citas c " +
            "JOIN profesionales p ON c.idProfesional = p.idProfesionales " +
            "GROUP BY p.nombre", nativeQuery = true)
    List<CitasPorProfesionalDto> obtenerCitasPorProfesional();

    @Query(value = "SELECT s.nombreSede AS nombreSede, COUNT(c.idCitas) AS totalCitas " +
            "FROM citas c JOIN sedes s ON c.idSede = s.idSedes " +
            "GROUP BY s.nombreSede", nativeQuery = true)
    List<CitasPorSedeDto> obtenerCitasPorSede();

    @Query(value = "SELECT a.nombreArea AS nombreArea, COUNT(c.idCitas) AS totalCitas " +
            "FROM citas c JOIN areas a ON c.idArea = a.idAreas " +
            "GROUP BY a.nombreArea", nativeQuery = true)
    List<CitasPorAreaDto> obtenerCitasPorArea();

}
