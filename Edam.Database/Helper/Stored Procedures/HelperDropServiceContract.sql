
-- -----------------------------------------------------------------------------

CREATE PROCEDURE Helper.HelperDropServiceContract
   @ContractName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM sys.service_contracts WHERE name = @ContractName)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP CONTRACT [' + @ContractName + ']'
      EXEC (@DropCommand)
   END
END
