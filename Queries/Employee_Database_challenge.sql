DROP TABLE retirement_titles

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ts.title,
	ts.from_date,
	ts.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ts
ON e.emp_no = ts.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt 
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles

DROP TABLE retiring_titles

SELECT COUNT(ut.title), 
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;

SELECT * FROM retiring_titles

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as ts
ON e.emp_no = ts.emp_no
WHERE e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no

SELECT * FROM mentorship_eligibility

CREATE TABLE retire_by_dept(
	count INT NOT NULL,
	dept_no VARCHAR NOT NULL
);

SELECT rd.count, d.dept_name
INTO retire_by_dept_name
FROM retire_by_dept as rd
INNER JOIN departments as d 
ON d.dept_no = rd.dept_no
ORDER by count DESC; 

DROP TABLE retire_by_dept_name

SELECT * FROM retire_by_dept_name

