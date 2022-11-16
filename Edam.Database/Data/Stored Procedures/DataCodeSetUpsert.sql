
CREATE PROCEDURE Data.DataCodeSetUpsert
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @DomainNo         INTEGER,
   @CodeSetUri       VARCHAR(2048),
   @CodeSetNo        BIGINT,
   @CodeSetId        VARCHAR(20),
   @CodeSetName      VARCHAR(128),
   @VersionId        VARCHAR(20),
   @DataOwnerId      VARCHAR(20),
   @OutCodeSetNo     BIGINT OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON
   IF NOT EXISTS(SELECT * FROM Data.DataCodeSet WHERE CodeSetNo = @CodeSetNo)
   BEGIN
      INSERT INTO Data.DataCodeSet (
         OrganizationId,   DomainNo,         CodeSetNo,
         CodeSetUri,       CodeSetName,      VersionId,
         DataOwnerId,      UpdateSessionId,  CodeSetId)
      VALUES (
         @OrganizationId, @DomainNo,        @CodeSetNo,
         @CodeSetUri,     @CodeSetName,     @VersionId,
         @DataOwnerId,    @SessionId,       @CodeSetId)
      SET @OutCodeSetNo = @@IDENTITY
   END
   ELSE
   BEGIN
      UPDATE Data.DataCodeSet
         SET CodeSetUri = @CodeSetUri,
             CodeSetName = @CodeSetName,
             CodeSetId = @CodeSetId,
             VersionId = @VersionId,
             UpdateSessionId = @SessionId
       WHERE OrganizationId = @OrganizationId
         AND CodeSetNo = @CodeSetNo
         AND DomainNo = @DomainNo
      SET @OutCodeSetNo = @CodeSetNo
   END
END
