
CREATE PROCEDURE Data.DataCodeGet
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @CodeSetNo        BIGINT,
   @OptionNo         INT = 1
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   SELECT OrganizationId,
          CodeSetNo,
          IdNo,
          CodeId,
          AlternateId,
          VersionId,
          Description,
          CategoryId,
          DataOwnerId,
          RecordStatusCode
     FROM Data.DataCode
    WHERE OrganizationId = @OrganizationId
      AND CodeSetNo = @CodeSetNo
END
