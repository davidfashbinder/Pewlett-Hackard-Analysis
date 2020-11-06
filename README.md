# Pewlett-Hackard Analysis

## Overview of Project
---
The purpose of this project is to begin to understand the basic functions of SQL, including building tables, importing/exporting data from/to csv's, complete joins on the tables we create using Primary and Foreign Keys, and ultimately conduct queries on the data to extract meaningful information.   


### Purpose of Analysis
In this analysis, we are examining the impact that the upcoming "silver tsunami" will have on the company Pewlett-Hackard.  They are at risk of having a significant number of their employees retire, so it's important that a transition plan is assembled by the operations team.  We need to determine the following:
-How many current employees are potentially going to retire?
-What specific jobs will be impacted the most by retiring, based on title?
-What current employees are eligible for a mentorship program, so that they may more easily succeed the retirees?

### Results 

### Number of Retiring Employees By Title 

![Retiring Titles]("Images/Retiring_Titles.png")

-There are a total of 90,398 employees that are potential retirees.

-Senior Engineers and Senior Staff make up 32.53% and 31.26% of all potential retirees.  

-Engineers are 15.73% and Staff 13.54% of all potential retirees.  

![Mentorship Employees](https://github.com/davidfashbinder/Pewlett-Hackard-Analysis/blob/main/Images/Mentorship_Eligibility.pn)

-There are 1940 employees eligible for the Mentorship Program, based on their ages.  


### Summary Recommendations

As we can see by the above queries, there are nearly 100,000 employees who are eligible to retire.  With 63% of them being Senior-level positions, it's important that the 1940 employees identified as Mentorship candidates be paired up with qualified retirees.  Fortunately, since the eligibility count is much smaller than the retiring count, leadership can be very choosy about who they allow to become mentors.  

We can break this task down even further, to be sure we are pairing mentors and mentees from the same departments.

We already created a table for retirees by department number during our pre-work, here:

![Retirees by Department Number]("Images/Retire_By_Dept.png").

While this is helpful, we can make this data easier to work with by joining this table with the "Departments" table to illustrate the number of retirees by Department Name. We will use this SQL Query:

![Retirees by Department Name]("Images/SQL_query_Retire_by_Dept_Name.png")

And we will get this table as the output:

![Retirees by Department Name Output]("Images/Retire_by_Dept_Name.png")

We can now partner with the leadership of the listed departments in order to jump-start the Mentorship Program and be ready for the "Silver Tsunami".
