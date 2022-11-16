
CREATE PROCEDURE [B2B].[ExchangeCodeInsertUpdate]
   @SessionId   VARCHAR(40),
   @DataOwnerId VARCHAR(20),
   @CodeId      VARCHAR(20),
   @Description VARCHAR(128)
AS
BEGIN
   SET NOCOUNT ON
   IF NOT EXISTS(SELECT * FROM B2B.ExchangeCode
                  WHERE CodeId = @CodeId)
   BEGIN
      INSERT INTO B2B.ExchangeCode (CodeId, Description, DataOwnerId, UpdateSessionId)
      SELECT @CodeID, @Description, @DataOwnerId, @SessionId
   END
   ELSE
   BEGIN
      UPDATE B2B.ExchangeCode
         SET Description = @Description
       WHERE CodeId = @CodeId
         AND DataOwnerId = @DataOwnerId
   END
END
