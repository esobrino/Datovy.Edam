
-- -----------------------------------------------------------------------------
-- Provide a method to drop a function without writting and hidding any silly 
-- needed T-SQL code
-- drop procedure Helper.HelperDropFunction

CREATE PROCEDURE Helper.HelperDropFunction
   @FunctionName NVARCHAR(80)
AS
BEGIN
   IF  EXISTS (SELECT * FROM sys.objects
        WHERE object_id = OBJECT_ID(@FunctionName)
          AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP FUNCTION ' + @FunctionName
      EXEC (@DropCommand)
   END
END
