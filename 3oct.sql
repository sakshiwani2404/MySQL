SELECT e.employee_id,e.first_name,e.reports_to,m.employee_id,m.first_name m_first_name -- here e.reports_to and m.employee_id seems to be equal as the condition applied for this is to be to equal
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

SELECT m.report_to
FROM employees e
JOIN employees m
	ON e.reports_to= m.employee_id
WHERE m.reports_to= NULL