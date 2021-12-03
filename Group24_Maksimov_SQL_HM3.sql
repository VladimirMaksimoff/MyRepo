--1.Âûâåñòè âñåõ ñîòðóäíèêîâ, ÷üè èìåíà åñòü â áàçå âìåñòå ñ çàðïëàòàìè
select employee_name, monthly_salary 
from employees   
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 

--2.Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
select employee_name
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
where monthly_salary < '2000'

--3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select monthly_salary, employee_name   
from salary
join employees_salary
on salary.id = employees_salary.id_salary 
left join employees 
on employees.id = employees_salary.id_employees 
where employee_name is null

--4. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select monthly_salary, employee_name   
from salary
join employees_salary
on salary.id = employees_salary.id_salary 
left join employees 
on employees.id = employees_salary.id_employees 
where monthly_salary < '2000' and employee_name is null

 --5. Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
select employee_name from employees
left join employees_salary
on employees.id = employees_salary.id_employees
left join salary
on salary.id = employees_salary.id_salary 
where monthly_salary is null

--6.Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 

--7.Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--8. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Python%'

--9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--10. Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Manual%'

--11. Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Auto%'

-- 12. Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Jun%'


--13. Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Mid%'

--14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Sen%'


--15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--16. Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select monthly_salary
from employees 
join employees_salary 
on employees.id = employees_salary.id_employees
join salary 
on salary.id = employees_salary.id_salary
join roles_employee  
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python%'

--17. Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Junior Python%'

--18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Middle Java%'

--19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Senior Java%'

-- 20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Junior%QA%'

-- 21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select AVG (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Jun%'

-- 22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select SUM (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select MIN (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
select MAX (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Mid%'

--27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%dev%'

-- 28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select SUM (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%dev%'

-- 29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
order by monthly_salary asc 

-- 30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary between'1700' and '2300'
order by monthly_salary asc 

--31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary < '2300'
order by monthly_salary asc 

--32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000-
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary in ('1100','1500','2000')
order by monthly_salary asc 


