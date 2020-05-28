#Q1 List alphabetically the names of all female passengers that survived

SELECT name.FirstName, name.LastName FROM 
	db_titanic.titanictable_name AS name, 
    db_titanic.titanictable_survived AS survived,
    db_titanic.titanictable_sex AS gender
WHERE name.PassengerId = survived.PassengerId
  AND name.PassengerId = gender.PassengerId
  AND gender.sex = 'female'
order by name.FirstName asc, name.LastName asc;

  

SELECT * FROM db_titanic.titanictable_survived survived ;

SELECT * from db_titanic.titanictable_sex AS gender;