INSERT INTO sedes(idSedes, nombreSede) VALUES (1, "San Martín");
INSERT INTO sedes(idSedes, nombreSede) VALUES (2, "San Lima");
INSERT INTO sedes(idSedes, nombreSede) VALUES (3, "Arequipa");
INSERT INTO sedes(idSedes, nombreSede) VALUES (4, "Trujillo");
INSERT INTO sedes(idSedes, nombreSede) VALUES (5, "Ayacucho");

INSERT INTO areas(idAreas, nombreArea) VALUES (1, "Psiquiatría");
INSERT INTO areas(idAreas, nombreArea) VALUES (2, "Neurología");
INSERT INTO areas(idAreas, nombreArea) VALUES (3, "Psicología");
INSERT INTO areas(idAreas, nombreArea) VALUES (4, "Terapia Ocupacional");

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

