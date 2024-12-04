DECLARE @name VARCHAR(30)
DECLARE @age INT

DECLARE listCursor2 CURSOR SCROLL
FOR 
	SELECT name,age from userAge

OPEN listCursor2 

FETCH FIRST FROM listCursor2 into @name,@age

WHILE(@@FETCH_STATUS = 0)
BEGIN
	
	PRINT 'Name : ' + @name + ' Age : ' + cast(@age as varchar(20))

	FETCH NEXT FROM listCursor2 INTO @name,@age

END 

CLOSE listCursor2
DEALLOCATE listCursor2