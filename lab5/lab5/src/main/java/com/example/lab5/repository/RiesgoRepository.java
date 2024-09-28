package com.example.lab5.repository;

import com.example.lab5.entity.Areas;
import com.example.lab5.entity.Riesgos;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RiesgoRepository extends JpaRepository<Riesgos, Integer> {
}
