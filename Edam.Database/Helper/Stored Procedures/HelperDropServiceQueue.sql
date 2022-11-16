
-- -----------------------------------------------------------------------------

CREATE PROCEDURE Helper.HelperDropServiceQueue
   @Schema    NVARCHAR(80),
   @QueueName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM sys.service_queues WHERE name = @QueueName)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      IF @Schema = ''
         SET @DropCommand = 'DROP QUEUE [' + @QueueName + ']'
      ELSE
         SET @DropCommand = 'DROP QUEUE [' + @Schema + '].[' + @QueueName + ']'
      EXEC (@DropCommand)
   END
END
