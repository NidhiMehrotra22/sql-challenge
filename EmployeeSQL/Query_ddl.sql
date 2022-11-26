select *
from departments

select *
from titles

select *
from employees

select *
from dept_emp

select *
from dept_manager

select *
from salaries

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no= salaries.emp_no

select first_name,last_name,hire_date
from employees
where hire_date between '1986-01-01'and '1986-12-31';

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
join employees as e on 
dm.emp_no = e.emp_no
join departments as d on
dm.dept_no= d.dept_no


select e.emp_no, e.last_name, e.first_name, d.dept_name, d.dept_no
from  dept_emp as de
join employees as e on 
e.emp_no = de.emp_no
join departments as d on
de.dept_no = d.dept_no


select first_name,last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de on 
e.emp_no = de.emp_no
join departments as d on
de.dept_no = d.dept_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de on 
e.emp_no = de.emp_no
join departments as d on
de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

select last_name , COUNT(last_name) as "Total Last Names"
from employees
group by last_name
order by "Total Last Names" desc;
