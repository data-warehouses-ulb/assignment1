use [temp]
go


CREATE TABLE [newdepartments] (
    [dept_no] varchar(4),
    [dept_name] varchar(100)
);

CREATE TABLE [newCity] (
    [city_id] int,
    [city] varchar(100),
    [state_id] int
);

CREATE TABLE [newState] (
    [state_id] int,
    [state] varchar(100),
    [country_id] int
);

CREATE TABLE [newCountry] (
    [country] varchar(100),
    [country_id] int
);

CREATE TABLE newTitle(
	[id] [int] NOT NULL,
	[title] [varchar](50) NULL
);

CREATE TABLE [new_client_emp] (
    [emp_no] int,
    [client] int
);

CREATE TABLE [new_emp] (
    [emp_no] int,
    [birth_date] datetime,
    [first_name] varchar(100),
    [last_name] varchar(100),
    [gender] varchar(10),
    [hire_date] datetime,
    [salary] int,
    [title_no] int,
    [dept_no] varchar(4),
    [current_city] int,
    [base_city] int,
    [marital_status] varchar(10),
    [no_of_children] int
);

CREATE TABLE [snapshotdates] (
    [from_date] datetime,
    [to_date] datetime
);

CREATE TABLE [new_clients] (
    [client_id] int,
    [client] varchar(100),
    [category] varchar(10)
);