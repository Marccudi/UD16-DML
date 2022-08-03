USE `actividades`;

insert into departamentos(CODIGO, NOMBRE, PRESUPUESTO)
values
	(1, "ABC", 10.0),
    (2, "DEF", 20.0),
    (3, "GHI", 30.0),
    (4, "HJK", 40.0),
    (5, "LMN", 50.0),
    (6, "OPQ", 60.0),
    (7, "RST", 70.0),
    (8, "UVW", 80.0),
    (9, "XYZ", 90.0),
    (10, "012", 190.0);
    
insert into empleados(DNI, NOMBRE, APELLIDOS, DEPARTAMENTO)
values
	("61896510", "A", "B" , 1),
    ("49843690", "C", "D" , 2),
    ("50489117", "E", "F", 3),
    ("31290305", "G", "H", 4),
    ("43028306", "I", "J", 5),
    ("70804115", "K", "L", 6),
    ("39177627", "M", "N", 7),
    ("36112237", "O", "P", 8),
    ("07413360", "Q", "R", 9),
    ("16582870", "S", "T", 10);
    
