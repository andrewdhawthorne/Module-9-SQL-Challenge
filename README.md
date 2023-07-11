# Module-9-SQL-Challenge
files for Data Boot Camp Module 9 SQL Challenge 

# Challenge Overview 
In this challenge I analyzed employee data from a fictional company, Pewlett Hackard. I used the following process: 

1. Reviewed provided csv files (Resources folder)
2. Used QuickDBD (https://www.quickdatabasediagrams.com/) to map out table schemas (EmployeeSQL folder)
3. Using pgAdmin 4, created a database titled "EmployeeSQL" and created six tables based on the csv files ("table_schemata" in EmployeeSQL folder)
4. Using the "Import/Export Data" function, populated each table from the corresponding csv files 
5. Ran queries to complete the following tasks ("analysis_query" in EmployeeSQL folder): 

    a. List the employee number, last name, first name, sex, and salary of each employee. 
    
    ## There are a total of 300,024 employees in the dataset. 

    b. List the first name, last name, and hire date for the employees who were hired in 1986. 
    
    ## A total of 36,232 employees were hired that year. 

    c. List the manager of each department along with their department number, department name, employee number, last name, and first name. 
    
    ## There are a total of 24 managers across 9 departments. 

    d. List the department number for each employee along with that employee’s employee number, last name, first name, and department name. 

    ## This query yielded a total of 331,603 results, which is more than the total number of employees, indicating that there are most likely duplicates; further analysis needed. 

    e. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

    ## There are 20 employees whose first name is Hercules and last name starts with B. 

    f. List each employee in the Sales department, including their employee number, last name, and first name.

    ## There are 52,245 employees in the Sales department. 

    g. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

    ## There are 137,952 employees across the Sales and Development departments. 

    h. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

    ## "Baba" is the most common last name in the dataset, occuring 226 times. 


# Sources 

Classmate: I worked extensively with cohort member Fidel Carrillo. 

Links & Class Activities: 

03-Stu_Creating_Tables (SQL day 1)

09-Ins_Joins (SQL day 1)

02-Ins_Aggregates (SQL day 2)

05-Stu_Order_By (SQL day 2)

https://www.geeksforgeeks.org/difference-between-primary-key-and-foreign-key/