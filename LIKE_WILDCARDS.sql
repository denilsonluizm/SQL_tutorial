--1
SELECT BusinessEntityID, PasswordSalt
FROM Person.Password
WHERE PasswordSalt LIKE 'mn%'
--2
SELECT*
FROM Person.Password
WHERE PasswordSalt LIKE '%abc%'
--3
SELECT COUNT(*)
FROM Person.Password
WHERE PasswordSalt LIKE 'a[hdj]a%'
--4
SELECT rowguid
FROM Person.Password
WHERE rowguid LIKE '4__________________________________9'
--5
SELECT EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE '____@%'

SELECT COUNT(*)
FROM Person.EmailAddress
WHERE EmailAddress LIKE '____@%'
--6
SELECT EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%m[aeiou]n%'

SELECT COUNT(*)
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%m[aeiou]n%'
--7
SELECT*
FROM Person.EmailAddress
WHERE EmailAddress NOT LIKE '%m[aeiou]n%'
--8
SELECT EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%e[^aeiou]c%'

SELECT COUNT(*)
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%e[^aeiou]c%'
--9
SELECT EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%[ab][ab]%'