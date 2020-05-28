SELECT * FROM db_titanic.titanictable_survived;

SET SQL_SAFE_UPDATES = 0;

update db_titanic.titanictable_survived set Survived_1 = true where Survived = 'Yes'; 

alter table db_titanic.titanictable_survived drop Survived;

ALTER TABLE db_titanic.titanictable_survived Change Survived_1 Survived BOOLEAN;

