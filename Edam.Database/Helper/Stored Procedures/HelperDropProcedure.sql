
-- -----------------------------------------------------------------------------

CREATE PROCEDURE Helper.HelperDropProcedure
   @ProcedureName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM dbo.sysobjects
      WHERE id = object_id(@ProcedureName) 
        AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP PROCEDURE ' + @ProcedureName
      EXEC (@DropCommand)
   END
END
