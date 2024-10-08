package com.example.lab5.repository;

import com.example.lab5.entity.Profesionales;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfesionalRepository extends JpaRepository<Profesionales, Integer> {
}
