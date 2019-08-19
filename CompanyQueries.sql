/* A01192934 Layla Tame #13 */

select '1. Department Name'
select dname from department

select '2. Name of women employees'
select FNAME, LNAME
from EMPLOYEE
where SEX = 'F'

select '3. Employee name and department name'
select FNAME, LNAME, DNAME
from EMPLOYEE join DEPARTMENT on DNO =	DNUMBER

select '4. Department name and manager name'
select DNAME, FNAME, LNAME
from DEPARTMENT join EMPLOYEE on MGRSSN = SSN

select '5. Name and address of employees in Research department'
select FNAME, ADDRES
from EMPLOYEE join DEPARTMENT on DNO = DNUMBER
where DNAME = 'Research'

select '6. Project number, department number and manager info'
select PNUMBER, DNUM, LNAME, ADDRES, BDATE
from PROJECT, DEPARTMENT, EMPLOYEE
where PLOCATION = 'Stafford'and DNUM = DNUMBER and MGRSSN = SSN

select '7. Project numbers with Smith'
select PNUMBER
from PROJECT, WORKS_ON, EMPLOYEE
where LNAME = 'Smith' and PNUMBER = PNO and ESSN = SSN

select '8. Employees with no dependents'
select FNAME, LNAME from EMPLOYEE
except
select FNAME, LNAME from EMPLOYEE join dependent on SSN = ESSN

select '9. Managers with at least one dependent'
select distinct FNAME, LNAME
from EMPLOYEE, DEPARTMENT, DEPENDENT
where SSN = MGRSSN and SSN = ESSN

select '10. Name of employees and supervisor'
SELECT E.FName+ ' ' + E.LName as Employee,
       S.FName+ ' ' + S.LName as Supervisor
from Employee E left join Employee S on E.superssn = S.SSN
