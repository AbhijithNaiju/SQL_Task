DECLARE @name VARCHAR(30)
DECLARE @age INT

DECLARE listCursor CURSOR FOR 
	SELECT name,age from userAge

OPEN listCursor 

FETCH NEXT FROM listCursor into @name,@age

WHILE(@@FETCH_STATUS = 0)
BEGIN
	
	PRINT 'Name : ' + @name + ' Age : ' + cast(@age as varchar(20))

	FETCH NEXT FROM listCursor INTO @name,@age

END 

CLOSE listCursor
DEALLOCATE listCursor