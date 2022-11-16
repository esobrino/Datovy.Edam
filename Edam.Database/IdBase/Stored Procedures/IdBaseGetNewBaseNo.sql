
CREATE PROCEDURE IdBase.IdBaseGetNewBaseNo
   @CounterIdNo     INTEGER,
   @NumberOfEntries INTEGER,
   @NewIdNo         INTEGER OUTPUT
-- WITH EXECUTE AS 'kifEntry'
AS
BEGIN
   SET NOCOUNT ON
   IF @NumberOfEntries <= 0
      SET @NumberOfEntries = 1

   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
   BEGIN TRANSACTION

   DECLARE @cnt    INTEGER,
           @newcnt INTEGER

   SELECT @cnt = IdCount FROM IdBase.IdBaseCounters
    WHERE IdNo = @CounterIdNo

   IF (@@ERROR <> 0)
   BEGIN
      ROLLBACK TRAN
      SET TRANSACTION ISOLATION LEVEL READ COMMITTED
      RETURN -9991
   END

   SET @newcnt = @cnt + @NumberOfEntries

   UPDATE IdBase.IdBaseCounters SET IdCount = @newcnt
    WHERE IdNo = @CounterIdNo

   IF (@@ERROR <> 0)
   BEGIN
      ROLLBACK TRAN
      SET TRANSACTION ISOLATION LEVEL READ COMMITTED
      RETURN -9992
   END

   -- commit transaction

   COMMIT TRANSACTION
   SET TRANSACTION ISOLATION LEVEL READ COMMITTED

   SET @NewIdNo = @cnt
END  -- end of IdBase.IdBaseGetNewBaseNo
