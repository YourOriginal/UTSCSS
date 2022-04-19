-- CREATE QUERY FOR # OF RETIRING EMPLOYEES BY TITLE

SELECT e.emp_no,
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
-- INTO retiring_title
FROM employees AS e
INNER JOIN title AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows (unique_titles.csv)
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retiring_title AS rt
WHERE to_date='9999-01-01'
ORDER BY rt.emp_no ASC, to_date DESC;

-- Count titles
SELECT ut.title, COUNT(ut.title)
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY count DESC;

-- Mentorship Eligibility

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
-- INTO mentor_eligible
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN title AS t
        ON (de.emp_no = t.emp_no)
WHERE (de.to_date NOT '9999-01-01')
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;


