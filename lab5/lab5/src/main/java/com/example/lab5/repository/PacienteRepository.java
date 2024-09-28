package com.example.lab5.repository;

import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Paciente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PacienteRepository extends JpaRepository<Paciente, Integer> {
}
