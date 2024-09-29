package com.example.lab5.repository;

import com.example.lab5.entity.Foro;
import com.example.lab5.entity.Paciente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ForoRepository extends JpaRepository<Foro, Integer> {
}
