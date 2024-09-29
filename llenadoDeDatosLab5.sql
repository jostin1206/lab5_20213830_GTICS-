INSERT INTO sedes(idSedes, nombreSede) VALUES (1, "San Martín");
INSERT INTO sedes(idSedes, nombreSede) VALUES (2, "Lima");
INSERT INTO sedes(idSedes, nombreSede) VALUES (3, "Arequipa");
INSERT INTO sedes(idSedes, nombreSede) VALUES (4, "Trujillo");
INSERT INTO sedes(idSedes, nombreSede) VALUES (5, "Ayacucho");

INSERT INTO areas(idAreas, nombreArea) VALUES (1, "Psiquiatría");
INSERT INTO areas(idAreas, nombreArea) VALUES (2, "Neurología");
INSERT INTO areas(idAreas, nombreArea) VALUES (3, "Psicología");
INSERT INTO areas(idAreas, nombreArea) VALUES (4, "Terapia Ocupacional");

INSERT INTO riesgos(idRiesgos, nombreriesgo) VALUES (1, "Bajo");
INSERT INTO riesgos(idRiesgos, nombreriesgo) VALUES (2, "Moderado");
INSERT INTO riesgos(idRiesgos, nombreriesgo) VALUES (3, "Alto");
INSERT INTO riesgos(idRiesgos, nombreriesgo) VALUES (4, "Muy Alto");

INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (1,"Leonardo Campos", "imagen1.jpg","Especialista en psiquiatria",1,3);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede)VALUES (2,"Ronald Boyer","imagen2.jpg","Psiquiatra profesional",1,2);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (3,"Karla Pezo","imagen3.jpg","Psiquiatra disponible las 24 horas" ,1,1);

INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (4,"Mayra Gonzales", "imagen4.jpg","Especialista en Neurologia",2,3);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede)VALUES (5,"Franco Lazo","imagen5.jpg","Neurologo profesional",2,4);

INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (6,"Victor Guerra","imagen6.jpg","Especialista en Psicología" ,3,5);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (7,"Paolo Valiente","imagen7.jpg","Psicologo profesional" ,3,2);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (8,"Alonso Llanos","imagen8.jpg","Psicologo disponible las 24 horas" ,3,1);

INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (9,"Diego Torres","imagen9.jpg","Especialista en Terapias" ,4,2);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (10,"Piero Mendoza","imagen10.jpg","Terapeuta profesional" ,4,3);
INSERT INTO profesionales(idProfesionales,nombre,imagen,descripcionProfesional, idArea,idSede) VALUES (11,"Hellen Aranda","imagen11.jpg","Terapeuta disponible las 24 horas" ,4,1);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (1, '2024-10-01', 1);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (2, '2024-10-05', 1);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (3, '2024-10-10', 1);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (4, '2024-10-03', 2);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (5, '2024-10-07', 2);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (6, '2024-10-02', 3);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (7, '2024-10-12', 3);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (8, '2024-10-05', 4);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (9, '2024-10-09', 4);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (10, '2024-10-06', 5);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (11, '2024-10-11', 5);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (12, '2024-10-04', 6);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (13, '2024-10-10', 6);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (14, '2024-10-07', 7);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (15, '2024-10-15', 7);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (16, '2024-10-08', 8);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (17, '2024-10-13', 8);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (18, '2024-10-01', 9);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (19, '2024-10-06', 9);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (20, '2024-10-04', 10);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (21, '2024-10-10', 10);

INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (22, '2024-10-03', 11);
INSERT INTO fechas(idFechas, fechaDisponibilidad, idProfesional) VALUES (23, '2024-10-09', 11);


-- Para casa
INSERT INTO pacientes(nombrePaciente, DNI, Edad, riesgos_idRiesgos) VALUES ("Carlos Vargas" , "12346767", 23,1);
INSERT INTO pacientes(nombrePaciente, DNI, Edad, riesgos_idRiesgos) VALUES ("Luis Pinedo" , "12346778", 32,2);
INSERT INTO pacientes(nombrePaciente, DNI, Edad, riesgos_idRiesgos) VALUES ("Liz Vela" , "12346789", 26,3);
INSERT INTO pacientes(nombrePaciente, DNI, Edad, riesgos_idRiesgos) VALUES ("Angela Salazar" , "12346790", 45,4);

INSERT INTO citas (motivoConsulta, idPaciente, idArea, idSede, idFechaConsulta, idRiesgo, precio, idProfesional) 
VALUES 
('Sesion mensual con el psiquiatra', 1, 1, 3, 1, 1, 120.50, 1),
('Chequeo general del cerebro', 2,2, 3, 8, 2, 150.00, 4),
('Problemas con relaciones amicales', 3, 3, 5, 12, 3, 100.00, 6),
('Consulta de rutina', 4, 4, 2, 18, 4, 130.00, 9);


