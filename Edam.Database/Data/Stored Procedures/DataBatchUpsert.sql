
CREATE PROCEDURE Data.DataBatchUpsert
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @DataOwnerId      VARCHAR(20),
   @BatchId          VARCHAR(40) = NULL,
   @DomainUri        VARCHAR(2048),
   @VersionId        VARCHAR(20) = NULL,
   @GroupId          VARCHAR(20) = NULL,
   @OutBatchId       VARCHAR(40) OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON

   DECLARE @dno INTEGER,
           @sno INTEGER,
           @bid VARCHAR(40)

   SELECT @dno = DomainNo
     FROM Data.DataDomain
    WHERE DomainURI = @DomainUri
   IF @dno is null
      RETURN -1

   SELECT @sno = max(BatchNo)
     FROM Data.DataBatch
    WHERE DomainNo = @dno
      AND GroupId = @GroupId
    GROUP BY DomainNo
   SET @sno = @sno + 1

   IF NOT EXISTS(SELECT * FROM Data.DataBatch
                  WHERE BatchId = @BatchId)
   BEGIN
      SET @OutBatchId = cast(newid() as varchar(40))
      INSERT INTO Data.DataBatch (
         BatchId, DomainNo, GroupId, SequenceNo, VersionId, UpdateSessionId,
         OrganizationId, DataOwnerId)
      VALUES (
         @OutBatchId, @dno, @GroupId, @sno, @VersionId, @SessionId,
         @OrganizationId, @DataOwnerId)
   END
   ELSE
   BEGIN
      SET @OutBatchId = @BatchId
      UPDATE Data.DataBatch
         SET LastUpdateDate = getutcdate(),
             RecordStatusCode = 'C'
       WHERE BatchId = @BatchId
   END
END
