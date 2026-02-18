
--таблица студентов
create table students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(50) 
);


--таблица курсов
create table courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_name varchar(50)
);


-- таблица записей на курсы ( связи между студентами и курсами)
create table enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER,
  course_id INTEGER,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);



INSERT INTO students (id, name)
VALUES (1, 'Иван') (2, 'Мария'),(3, 'Андрей');

INSERT INTO courses (id,course_name)
VALUES (1,'SQL для начинающих'),(2,'Веб-разработка'),(3,'Тестирование ПО');


INSERT INTO  enrollments (id,student_id,course_id)
VALUES (1, 1, 1), (2, 1, 3), (3, 2, 1), (4, 3, 2);

SELECT * FROM students;


SELECT * 
FROM courses 
WHERE course_name LIKE '%SQL%';

SELECT * FROM students ORDER BY name ASC;

UPDATE courses
SET course_name = 'Frontend разработка'
WHERE id = 2;

DELETE FROM enrollments
WHERE id = 4;

SELECT * FROM students WHERE name LIKE '%Иван%';

SELECT students.name, courses.course_name 
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id
WHERE courses.course_name = 'SQL для начинающих';

SELECT courses.course_name, students.name
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
LEFT JOIN students ON enrollments.student_id = students.id;

SELECT students.name, courses.course_name
FROM students
RIGHT JOIN enrollments ON students.id = enrollments.student_id
RIGHT JOIN courses ON enrollments.course_id = courses.id;


--добавить нового студента

INSERT INTO students (id, name)
VALUES (4, 'Ирина');

-- добавить новый курс в таблицу курсы

INSERT INTO courses (id,course_name)
VALUES (4,'Основы программирования');


-- Объединить таблицы студентов, курсов и записей в один отчет

SELECT 
    students.id AS student_id,
    students.name AS student_name,
    courses.id AS course_id,
    courses.course_name AS course_name 
FROM 
  	students
LEFT JOIN 
    enrollments ON students.id = enrollments.student_id
LEFT JOIN 
    courses ON enrollments.course_id = courses.id;    	
    
-- Задание №1  Добавить 10 студентов в таблицу студенты

INSERT INTO students (id, name)
VALUES (5, 'Инна'),(6, 'Марина'),(7, 'Антон'),
       (8, 'Илья'),(9, 'Мираслава'),(10, 'Артем'),
       (11, 'Сафия'), (12, 'Ольга'),(13, 'Ксюша'),(14, 'Люба');


-- Задание №2  Добавить 5 курсов в таблицу курсы 
	(например: Нагрузочное тестирование; BigData; Продукт менеджер: 
	Системный анализ; Бекэнд разработка)

INSERT INTO courses (id,course_name)
VALUES (9,'Нагрузочное тестирование'),(5,'BigData'),(6,'Продукт менеджер'), 
       (7,'Системный анализ'),(8,'Бекэнд разработка');

--Задание №3  Добавить 4 навых записи в таблицу «записи на курс»  (enrollments)

INSERT INTO  enrollments (id,student_id,course_id)
VALUES (5, 13, 5), (6, 11, 8), (7, 12, 6), (8, 9, 9);


-- Задание № 4 Показать все курсы и студентов, даже если на курс никто не записан.

SELECT
    courses.course_name,
    students.name 
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
LEFT JOIN students ON enrollments.student_id = students.id;



-- Задание № 5 Найти имена студентов, записанных на курс с названием "Тестирование ПО".

SELECT students.name, courses.course_name 
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id
WHERE courses.course_name = 'Тестирование ПО';
	


--Задание № 6 Вывести курсы и студентов, чьи имена длиннее 5 символов

SELECT
    courses.course_name,
    students.name
FROM enrollments
INNER JOIN courses ON enrollments.course_id = courses.id
INNER JOIN students ON enrollments.student_id = students.id
WHERE LENGTH(students.name) > 5
ORDER BY courses.course_name, students.name;




--Задание № 7 Найти студентов, которые записаны хотя бы на один курс, который содержит в своем название букву “Р” или “Веб”/”Web”

SELECT students.name, courses.course_name 
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id
WHERE courses.course_name LIKE '%р%'
OR courses.course_name LIKE '%Веб%'
OR courses.course_name LIKE '%Web%';



--Задание 8 Вывести все курсы и студентов которые записаны на эти курсы

SELECT
    courses.course_name,
    students.name
FROM enrollments
INNER JOIN courses ON enrollments.course_id = courses.id
INNER JOIN students ON enrollments.student_id = students.id
ORDER BY courses.course_name, students.name;






