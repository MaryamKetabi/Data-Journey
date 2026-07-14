-- inner join
select students.student_name, scores.student_score
from students join scores
on students.student_id=scores.student_id;

-- left join
select students.student_name, scores.student_score
from students left join scores
on students.student_id=scores.student_id;

-- right join
select students.student_name, scores.student_score
from students right join scores
on students.student_id=scores.student_id;

-- full join
-- Left Join
SELECT students.student_name, scores.student_score
FROM students 
LEFT JOIN scores 
ON students.student_id = scores.student_id
UNION
-- Right Join
SELECT students.student_name, scores.student_score
FROM students 
RIGHT JOIN scores 
ON students.student_id = scores.student_id;



