#Q5 Count of children in each class that did not survive

SELECT class.Pclass, count(name.PassengerId)
  FROM db_titanic.titanictable_name name,
       db_titanic.titanictable_survived surv,
       db_titanic.titanictable_pclass class,
       db_titanic.titanictable_age age
 WHERE name.PassengerId = surv.PassengerId
   AND name.PassengerId = class.TicketId
   AND name.PassengerId = age.PassengerId
   AND surv.Survived is false
   AND age.Age < 18
   group by class.Pclass 
   Order by Pclass;

     #name.PassengerId, name.FirstName, name.LastName, surv.Survived, class.Pclass, age.Age
  