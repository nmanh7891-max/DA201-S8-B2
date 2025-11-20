CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(255),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE
);
-- Tổng số nhân viên
SELECT COUNT(*) AS number_of_employees FROM Employees;
--  Tổng quỹ lương hàng tháng của công ty
SELECT SUM(salary) AS total_monthly_salary FROM Employees;
--  Mức lương trung bình của nhân viên
SELECT AVG(salary) AS average_salary FROM Employees;
--  Mức lương cao nhất trong công ty
SELECT MAX(salary) AS highest_salary FROM Employees;
--  Mức lương thấp nhất trong công ty
SELECT MIN(salary) AS lowest_salary FROM Employees;
--  Ngày vào làm sớm nhất (nhân viên lâu năm nhất)
SELECT MIN(hire_date) AS earliest_hire_date FROM Employees;
--  Tổng lương hàng tháng của phòng IT
SELECT SUM(salary) AS it_department_salary
FROM Employees
WHERE department = 'IT';
