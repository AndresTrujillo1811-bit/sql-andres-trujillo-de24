-- updating jokes 
SELECT * FROM funny_jokes;


UPDATE -- updates rating of the joke with id 7 to 10
	funny_jokes
SET
	rating = 10
WHERE
	id = 7;