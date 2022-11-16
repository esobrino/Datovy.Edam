
-- -----------------------------------------------------------------------------
-- Provide a method to drop a constraint without writting and hidding any silly 
-- needed T-SQL code

CREATE PROCEDURE Helper.HelperDropConstraint
   @TableName NVARCHAR(80),
   @ConstraintName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM dbo.sysobjects
      WHERE name = @ConstraintName)
   BEGIN
      DECLARE @DropCommand VARCHAR(250)
      SET @DropCommand = 'ALTER TABLE ' +
         rtrim(@TableName) + ' DROP CONSTRAINT ' + @ConstraintName
      EXEC (@DropCommand)
   END
END
