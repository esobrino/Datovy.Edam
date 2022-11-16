
CREATE PROCEDURE Data.DataReferenceTermGet
   @SessionId       VARCHAR(40) = NULL,
   @OrganizationId  VARCHAR(20),
   @Root            VARCHAR(1024),
   @DomainUri       VARCHAR(2048),
   @TermName        VARCHAR(1024)
AS
BEGIN
   SET NOCOUNT ON
   
   IF @Root is null
      SET @Root = ''
   IF @DomainUri is null
      SET @DomainUri = ''
   IF @TermName is null
      SET @TermName = ''

   SELECT t.CreatedDate,
          t.LastUpdateDate,
          t.ReferenceDate,
          t.OrganizationId,
          t.DataOwnerId,
          t.ExpiredDate,
          t.DomainNo,
          t.Root,
          t.Domain,
          t.Type,
          t.Element,
          t.TermNo,
          t.TermId,
          t.TermURI,
          t.TermName,
          t.Description,
          t.ConfidenceScore,
          t.StatusNo,
          t.UpdateSessionID,
          t.RecordStatusCode
     FROM Data.DataTerm t
     JOIN Data.DataDomain d
       ON t.DomainNo = d.DomainNo
    WHERE t.OrganizationId = @OrganizationId
      AND (@Root = ''
       OR  t.Root = @Root)
      AND (@DomainUri = ''
       OR   DomainUri like '%' + @DomainUri + '%')
      AND (@TermName = ''
       OR  t.TermName = @TermName)
END
