package com.example.lab5.repository;

import com.example.lab5.dto.PacientesPorRiesgoDto;
import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Paciente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PacienteRepository extends JpaRepository<Paciente, Integer> {
    @Query(value = "SELECT r.nombreriesgo AS nombreRiesgo, COUNT(p.idPacientes) AS totalPacientes " +
            "FROM pacientes p " +
            "JOIN riesgos r ON p.riesgos_idRiesgos = r.idRiesgos " +
            "GROUP BY r.nombreriesgo", nativeQuery = true)
    List<PacientesPorRiesgoDto> obtenerPacientesPorRiesgo();
}
