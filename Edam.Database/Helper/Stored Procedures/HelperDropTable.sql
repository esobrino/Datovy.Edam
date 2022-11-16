
-- -----------------------------------------------------------------------------
-- Provide a method to drop a table without writting and hidding any silly 
-- needed T-SQL code

CREATE PROCEDURE Helper.HelperDropTable
   @TableName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM dbo.sysobjects
      WHERE id = object_id(@TableName) 
        AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP TABLE ' + @TableName
      EXEC (@DropCommand)
   END
END
