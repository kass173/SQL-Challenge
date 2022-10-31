# Assignment 9: Employee Database

## Background

It’s a beautiful spring day, and it’s been two weeks since I was were hired as a new data engineer at Pewlett Hackard. My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

In this assignment, I've designed the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, I performed **data modeling**, **data engineering**, and **data analysis**.

## Instructions

This assignment was divided into three parts: data modeling, data engineering, and data analysis. 

#### Data Modeling

I Inspected the CSVs and sketched out an ERD of the tables. With the help of a tool from [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Using the provided information i've created a table schema for each of the six CSV files. Remembering to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys, verifying that the column is unique. Otherwise, creating a [composite key](https://en.wikipedia.org/wiki/Compound_key), which takes two primary keys to uniquely identify a row.

  * Being sure to create tables in the correct order to handle foreign keys.

* Importing each CSV file into the corresponding SQL table. 

#### Data Analysis

Once i had a completed database, i performed the relevant queries to answer the below questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Bonus (Optional)

As i've examine the data, i begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss. Follow these steps: 

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the following code to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

    * Consult the [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

    * If you’re using a password, do not upload your password to your GitHub repository. Review this [video](https://www.youtube.com/watch?v=2uaTPmNvH0I) and the [GitHub website](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.


## Submission

* an image file of your ERD.

* a `.sql` file of your table schemata.

* a `.sql` file of your queries.

* (Optional) Create a Jupyter notebook of the bonus analysis.


