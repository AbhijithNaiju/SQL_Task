CREATE PROCEDURE select_user2 @name VARCHAR(30)
AS 
BEGIN
	SELECT * FROM userAge WHERE name= @name
END

EXEC select_user2 @name='Abhijith'

