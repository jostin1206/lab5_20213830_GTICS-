package com.example.lab5.repository;

import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Citas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CitasRepository extends JpaRepository<Citas, Integer> {
}
