CREATE TABLE userAge (
	name VARCHAR(20)
	,age INT
	)

INSERT INTO userAge VALUES('Abhijith',21),('Jibin',23),('Dinil',23),('Adarsh',25),('Gosal',22);

CREATE FUNCTION getLesserAge(@max_age as int)
RETURNS TABLE
AS
RETURN (SELECT * FROM userAge WHERE age < @max_age)

select * from getLesserAge(23)


CREATE FUNCTION getAge(@name as varchar(20))
RETURNS INT
AS
BEGIN 
	RETURN (SELECT AGE FROM userAge WHERE name = @name)
END

select dbo.getAge('Abhijith')