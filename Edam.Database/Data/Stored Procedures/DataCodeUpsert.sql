
CREATE PROCEDURE Data.DataCodeUpsert
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @CodeSetNo        BIGINT,
   @IdNo             BIGINT,
   @CodeId           VARCHAR(40),
   @AlternateId      VARCHAR(80),
   @VersionId        VARCHAR(20),
   @Description      VARCHAR(512),
   @CategoryId       VARCHAR(20),
   @DataOwnerId      VARCHAR(20),
   @OutIdNo          BIGINT OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON
   IF NOT EXISTS(SELECT * 
                   FROM Data.DataCode 
                  WHERE CodeSetNo = @CodeSetNo
                    AND IdNo = @IdNo)
   BEGIN
      INSERT INTO Data.DataCode (
         OrganizationId,   CodeSetNo,     CodeId,
         AlternateId,      VersionId,     Description,
         CategoryId,       DataOwnerId,   UpdateSessionId)
      VALUES (
         @OrganizationId, @CodeSetNo,    @CodeId,
         @AlternateId,    @VersionId,    @Description,
         @CategoryId,     @DataOwnerId,  @SessionId)
      SET @OutIdNo = @@IDENTITY
   END
   ELSE
   BEGIN
      UPDATE Data.DataCode
         SET AlternateId = @AlternateId,
             VersionId = @VersionId,
             Description = @Description,
             CategoryId = @CategoryId,
             DataOwnerId = @DataOwnerId
       WHERE OrganizationId = @OrganizationId
         AND CodeSetNo = @CodeSetNo
         AND IdNo = @IdNo
      SET @OutIdNo = @IdNo
   END
END
