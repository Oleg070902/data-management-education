CREATE TABLE
	Departments (
		Id SERIAL,
		Title VARCHAR(20) NOT NULL,
		CONSTRAINT department_Id PRIMARY KEY (Id)
	);

CREATE TABLE
	Positions (
		Id SERIAL,
		DepartmentId INTEGER,
		Title VARCHAR(20) NOT NULL,
		NumberOfPossibleWorkers INTEGER,
		Salary MONEY NOT NULL,
		CONSTRAINT position_Id PRIMARY KEY (Id)
	);

CREATE TABLE
	Workers (
		Id SERIAL,
		DateOfBirth DATE NOT NULL,
		Gender VARCHAR(20) NOT NULL,
		Passport VARCHAR(20) NOT NULL,
		Address VARCHAR(255) NOT NULL,
		Phone VARCHAR(20) NOT NULL,
		CONSTRAINT worker_Id PRIMARY KEY (Id),
		UNIQUE (Passport, Phone)
	);

CREATE TABLE
	MovementLog (
		Id SERIAL,
		WorkerId INTEGER NOT NULL,
		NextPosition INTEGER NOT NULL,
		DateOfMove DATE NOT NULL,
		CONSTRAINT movement_log_Id PRIMARY KEY (Id)
	);