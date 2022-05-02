/*Get all of the students without a gmail.com account and a phone number.

Get their name, email, id, and cohort_id.*/

SELECT name, email, id
FROM students
WHERE email NOT LIKE '%@gmail.com'
AND phone IS NULL;