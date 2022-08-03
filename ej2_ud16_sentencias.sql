USE `actividades`;

-- Inserts
-- Fill 'departamentos' table
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
    
-- Fill 'empleados' table
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

-- Queries

-- 1. Obtener los apellidos de los empleados.
select APELLIDOS from empleados;

-- 2. Obtener los apellidos de los empleados sin repeticiones.
select distinct APELLIDOS from empleados;

-- 3. Obtener todos los datos de los empleados que se apellidan 'Smith'.
select * from empleados where empleados.APELLIDOS = "Smith";

-- 4. Obtener todos los datos de los empleados que se apellidan 'Smith' y los que se apellidan 'Rogers'.
select * from empleados where empleados.APELLIDOS = "Smith" or empleados.APELLIDOS = "Rogers";

-- 5. Obtener todos los datos de los empleados que trabajan para el departamento 14.
select * from empleados inner join departamentos where empleados.DEPARTAMENTO = 14;

-- 6. Obtener todos los datos de los empleados que trabajan para el departamento 37 y para el departamento 77.
select * from empleados inner join departamentos where empleados.DEPARTAMENTO = 37 or empleados.DEPARTAMENTO = 77;

-- 7. Obtener todos los datos de los empleados cuyo apellido comienze por 'P'.
select * from empleados where empleados.APELLIDOS like 'P%';

-- 8. Obtener el presupuesto total de todos los departamentos.
select sum(PRESUPUESTO) from departamentos;

-- 9. Obtener el numero de empleados en cada departamento.
-- The select has 2 identities in order to display where the employees are.
select DEPARTAMENTO, count(DEPARTAMENTO) from empleados group by departamento;

-- 10. Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento.
select * from empleados inner join departamentos where empleados.departamento = departamentos.codigo;
