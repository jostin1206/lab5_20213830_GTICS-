package com.example.lab5.repository;

import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Fechas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FechasRepository extends JpaRepository<Fechas, Integer> {
}
