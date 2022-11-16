
CREATE PROCEDURE Data.DataTermUpsert
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @DataOwnerId      VARCHAR(20),

   -- reference object info
   @ReferenceDate    DATETIME2 = NULL,
   @ReferenceTypeNo  SMALLINT = NULL,
   @AliasId          VARCHAR(20) = NULL,
   @AlternateId      VARCHAR(40) = NULL,
   @Description      VARCHAR(MAX) = NULL,
   @StatusNo         SMALLINT = NULL,

   -- term info
   @ExpiredDate      DATETIME2 = NULL,
   @DomainNo         INTEGER = NULL,
   @TermId           VARCHAR(20) = NULL,
   @TermURI          VARCHAR(1024),
   @TermName         VARCHAR(80),
   @ConfidenceScore  DECIMAL(6,5) = NULL,
   @OutTermId        VARCHAR(20) OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON
   SET @OutTermId = @TermId
   
   IF @AliasId is null
      SET @AliasId = 'OBJ'
   IF @ReferenceDate is null
      SET @ReferenceDate = getutcdate()
   IF @ReferenceTypeNo is null
      SET @ReferenceTypeNo = 20  -- Term
   IF @StatusNo is null
      SET @StatusNo = 1          -- active
   IF @DomainNo is null
      SET @DomainNo = (SELECT DomainNo FROM Data.DataDomain WHERE DomainName = 'Unknown')

   IF @OutTermId is null
   BEGIN
      DECLARE @desc VARCHAR(1024) = 'Reference (' + @TermName + ')'
      EXEC Data.DataReferenceObjectNew @SessionId = @SessionId, @ReferenceDate = @ReferenceDate,
         @ReferenceTypeNo = @ReferenceTypeNo, @AliasId = @AliasId, @AlternateId = @AlternateId,
         @Description = @desc, @StatusNo = @StatusNo, @OutReferenceId = @OutTermId OUTPUT
   END

   IF @TermId is null
   BEGIN
      INSERT INTO Data.DataTerm
         ( ReferenceDate,    OrganizationId,   DataOwnerId,
           ExpiredDate,      TermId,
           TermURI,          TermName,         Description,
           ConfidenceScore,  StatusNo)
      VALUES
         (@ReferenceDate,   @OrganizationId,  @DataOwnerId,
          @ExpiredDate,     @OutTermId,
          @TermURI,         @TermName,        @Description,
          @ConfidenceScore, @StatusNo)
   END
   ELSE
   BEGIN
      UPDATE Data.DataTerm
         SET ReferenceDate   = case when @ReferenceDate is null
                               then ReferenceDate else @ReferenceDate end,
             ExpiredDate     = case when @ExpiredDate is null
                               then ExpiredDate else @ExpiredDate end,
             TermURI         = case when @TermURI is null
                               then TermURI else @TermURI end,
             TermName        = case when @TermName is null
                               then TermName else @TermName end,
             Description     = case when @Description is null
                               then Description else @Description end,
             ConfidenceScore = case when @ConfidenceScore is null
                               then ConfidenceScore else @ConfidenceScore end,
             StatusNo        = case when @StatusNo is null
                               then StatusNo else @StatusNo end
       WHERE TermId = @OutTermId
   END
END
