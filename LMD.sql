UPDATE Employes
SET emp_salaire = 3150
WHERE ( emp_nom = 'CONDA' AND emp_prenom = 'Anna' )

UPDATE Employes
SET emp_salaire = emp_salaire * 1.2

UPDATE Employes
SET emp_salaire = 4130, emp_dep = 44
WHERE emp_matricule = 42

DELETE FROM NOM_TABLE
[WHERE ( < CONDITION_FILTRE > )]