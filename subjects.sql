CREATE TABLE subjects(
	subject_id SERIAL PRIMARY KEY,
	subject VARCHAR(100) NOT NULL,
	sub_department INT NOT NULL,
	FOREIGN KEY(sub_department) 
	  REFERENCES department (dept_id),
	
	created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
