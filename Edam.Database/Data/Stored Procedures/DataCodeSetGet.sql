
CREATE PROCEDURE Data.DataCodeSetGet
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @CodeSetUri       VARCHAR(2048),
   @OptionNo         INT = 1
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   SELECT OrganizationId,
          DomainNo,
          CodeSetNo,
          CodeSetUri,
          CodeSetName,
          VersionId,
          DataOwnerId,
          RecordStatusCode
     FROM Data.DataCodeSet
    WHERE OrganizationId = @OrganizationId
      AND (@OptionNo = 1
       OR  CodeSetUri like '%' + @CodeSetUri + '%')
END
