CREATE TABLE 
    IF NOT EXISTS transformed_data AS (
        SELECT 
            * 
        FROM 
            read_csv_auto('data/salaries2.csv')

    );