
-- -----------------------------------------------------------------------------
-- Provide a method to drop a type without writting and hidding any silly 
-- needed T-SQL code

CREATE PROCEDURE Helper.HelperDropType
   @TypeName NVARCHAR(80)
AS
BEGIN
   DECLARE @name VARCHAR(80),
           @indx SMALLINT
   SET @indx = CHARINDEX('.',@TypeName,1)
   IF @indx > 0
      SET @name = SUBSTRING(@TypeName,@indx+1,LEN(@TypeName)-@indx)
   ELSE
      SET @name = @TypeName
   -- SELECT @indx, @name

   IF EXISTS (
      SELECT * FROM dbo.systypes
      WHERE name = @name)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP TYPE ' + @TypeName
      EXEC (@DropCommand)
   END
END
