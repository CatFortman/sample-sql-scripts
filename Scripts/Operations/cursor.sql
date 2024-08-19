DECLARE db_cursor CURSOR FOR SELECT name, age, color FROM table; 
DECLARE @myName VARCHAR(256);
DECLARE @myAge INT;
DECLARE @myFavoriteColor VARCHAR(40);
OPEN db_cursor;
FETCH NEXT FROM db_cursor INTO @myName, @myAge, @myFavoriteColor;
WHILE @@FETCH_STATUS = 0  
BEGIN  

       --Do stuff with scalar values

       FETCH NEXT FROM db_cursor INTO @myName, @myAge, @myFavoriteColor;
END;
CLOSE db_cursor;
DEALLOCATE db_cursor;