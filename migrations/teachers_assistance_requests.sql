/*Using the ERD, we can create the tables for our teachers and assistance_requests entities.

Write the CREATE TABLE statements for the teachers and a assistance_requests tables.

*/

CREATE table teachers (
  id SERIAL PRIMARY KEY NOT NULL ,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN DEFAULT TRUE
);



CREATE table assistance_requests(
id SERIAL PRIMARY KEY NOT NULL,
assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
student_id INTEGER REFERENCES  students(id) ON DELETE CASCADE,
teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
created_at TIMESTAMP, 
started_at TIMESTAMP, 
completed_at TIMESTAMP,
student_feedback TEXT,
teacher_feedback TEXT

);