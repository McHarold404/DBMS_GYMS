# DBMS_GYMS
A command line operated database management system to manage several branches of a gym throughout the country.

### Requirements

MySQL (5.7+) and PyMySQL library in Python. 

### How to load schema and data

```
$ mysql -u <username> -p 
> (MYSQL environment, enter password)
> source <pathToGYM.sql> ; 
> exit ; 
$ mysql -u <username> -p GYM < data.sql
$ 
```

### How to run

```
$ python3 CLI.py
```

### Assumptions

1. The user is careful while entering and deleting the data to follow referential integrity constraints based on the SCHEMA (as prvoided in earlier phase). Not following so will lead to MySQL throwing error.
2. No appropirate input/choice given during runtime will throw an error of invalid int parsing and will require user to reconnect PyMySQL to the database.
3. All the subclass details entered for Member/Trainer/Staff (under Employee) by the user shall follow disjoint key constraints.
4. Deleting data is only possible if no referential integrity is violated. Cascading/setting to NULL is not implemented.
5. A trainer supports at max 20 members under him.
6. UPDATE statements when for some key/attribute which doesn't exist in the data of the table shall not throw any error and still show "Successfully updated details into Database" even though that cannot happen since the given reference key doesn't exist in table. 
7. While almost all the relations are lowercased, do note that 'Employee' has first letter uppercase and 'depedent' is a relation instead of 'dependant'. 


### Functions Implemented
1. Selection Functions:\
  a. Get a complete list of members.\
  b. Get a complete list of employees.
  
2. Projection Functions:\
  a. List diet plans sorted by their calory count\
  b. Classify members based on their BMI (underweight/overweight/fit).

3. Aggregate Functions: \
  a. Retrieve trainers with maximum/minimum number of clients

4. Search Functions:\
  a. Partially search name of exercises and equipment.\
  b. A function to partially search for food items in a given diet plan.
  
 5. Analysis Reports:\
 a. Trainer Analysis: Analysis performance of all members under a particular trainer based on their         BMI.\
 b. Branch Analysis: Analysis performance of a particular branch of a gym on metrics- working                  members, average BMI of members, number of trainers.
 
 6. CRUD Operations:\
  1.Add/Create new entries of members, employees, dietplans, gym equipment, branches.\
  2.Update/Modify details like contact number, BMI, address of trainers and members.\
  3.Delete old details of members, employees, worn out gym equipment.
