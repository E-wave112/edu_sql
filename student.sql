CREATE TABLE students (
	
	class_id SERIAL PRIMARY KEY,
	classes VARCHAR(255) NOT NULL,
	class_teacher INT NOT NULL UNIQUE,
	no_students INT,
	no_male INT CHECK (no_male = no_students - no_female),
	no_female INT CHECK (no_female = no_students - no_male),
	no_left_first_three_years INT,
	no_left_last_three_years INT,
	added TIMESTAMP NOT NULL DEFAULT current_timestamp,
	  FOREIGN KEY (class_teacher)
	     REFERENCES teachers (teacher_id)
	
);
