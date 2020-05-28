#Q3 Output by class, the names of children who did not survive
SELECT class.Pclass, name.FirstName, name.LastName 
  FROM 
	db_titanic.titanictable_name AS name, 
    db_titanic.titanictable_survived AS surv,
    db_titanic.titanictable_age AS age,
    db_titanic.titanictable_pclass AS class
WHERE name.PassengerId = surv.PassengerId
  AND name.PassengerId = age.PassengerId
  AND surv.Survived is false
  AND age.Age < 18 
order by class.Pclass asc;