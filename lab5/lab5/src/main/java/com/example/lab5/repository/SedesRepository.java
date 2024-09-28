package com.example.lab5.repository;

import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Profesionales;
import com.example.lab5.entity.Sedes;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SedesRepository extends JpaRepository<Sedes, Integer> {
}
