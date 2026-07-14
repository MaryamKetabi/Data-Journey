CREATE TABLE deliverycompanyabc.students
(`student_id` INT NOT NULL,
 `student_name` VARCHAR(45) NOT NULL,
 PRIMARY KEY (`student_id`));

CREATE TABLE deliverycompanyabc.scores
(`exam_id` INT NOT NULL,
 `student_id` INT NOT NULL,
 `student_score` INT NOT NULL,
 PRIMARY KEY (`exam_id`));

INSERT INTO deliverycompanyabc.students VALUES
(101, 'Jack'),
(102, 'John'),
(103, 'Harry'),
(104, 'Rebeca'),
(105, 'David'),
(106, 'Alisa');

INSERT INTO deliverycompanyabc.scores VALUES
(12, 101, 85),
(22, 101, 92),
(32, 103, 86),
(42, 104, 73),
(52, 105, 80),
(62, 107, 88);
