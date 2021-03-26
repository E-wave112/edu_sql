CREATE TABLE teachers(
        teacher_id SERIAL PRIMARY KEY,
        first_name VARCHAR(100) NOT NULL,
        last_name VARCHAR(100) NOT NULL,
        subject_take INT NOT NULL UNIQUE,
        subject_take2 INT UNIQUE,
        subject_take3 INT UNIQUE,
        dept_involved INT NOT NULL,
        dept_involved2 INT,
        dept_involved3 INT,
        dept_involved4 INT,
	    Admin BOOLEAN DEFAULT FALSE,
        salary INT NOT NULL
        created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
	    
	  FOREIGN KEY(subject_take)
	     REFERENCES subjects (subject_id)
	
	  FOREIGN KEY (subject_take2)
        REFERENCES subjects (subject_id)
	
	  FOREIGN KEY (subject_take3)
	    REFERENCES subject (subject_id)
	
        FOREIGN KEY(dept_involved) 
          REFERENCES department (dept_id),

        FOREIGN KEY(dept_involved2) 
          REFERENCES department (dept_id),
	    
	    FOREIGN KEY (dept_involved3)
	      REFERENCES department (dept_id),

            FOREIGN KEY (dept_involved4)
	      REFERENCES department (dept_id),
);
