 CREATE OR ALTER TRIGGER dbo.printTables
ON userAge
AFTER INSERT
AS
BEGIN
	SELECT * FROM userAge
END

INSERT INTO userAge VALUES('Dinil',24) 
