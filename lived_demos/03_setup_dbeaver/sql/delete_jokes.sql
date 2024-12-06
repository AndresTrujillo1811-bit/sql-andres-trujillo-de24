-- deleting jokes --
SELECT
	*
FROM
	funny_jokes
WHERE
	rating <5;


DELETE -- used to delete existing rows in the table
FROM
	funny_jokes
WHERE
	rating <5;

-- now it has been deleted
SELECT * FROM funny_jokes;