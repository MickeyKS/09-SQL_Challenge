

--Data Engineering--



CREATE TABLE "Departments" (
    "Department_Number" VARCHAR   NOT NULL,
    "Department_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Department_Number"
     )
);

CREATE TABLE "Department_Employees" (
    "Employee_Number" INT   NOT NULL,
    "Department_Number" VARCHAR   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "Department_Number" VARCHAR   NOT NULL,
    "Employee_Number" INT   NOT NULL
);

CREATE TABLE "Employees" (
    "Employee_Number" INT   NOT NULL,
    "Employee_Title_ID" VARCHAR   NOT NULL,
    "Birth_Date" DATE   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Salaries" (
    "Employee_Number" INT   NOT NULL,
    "Salary" INT   NOT NULL
);

CREATE TABLE "Titles" (
    "Employee_Number" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Department_Employees" ("Department_Number");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Departments" ("Department_Number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

