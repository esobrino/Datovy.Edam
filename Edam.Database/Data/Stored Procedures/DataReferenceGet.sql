
CREATE PROCEDURE Data.DataReferenceGet
   @SessionId       VARCHAR(40) = NULL,
   @OrganizationId  VARCHAR(20),
   @Root            VARCHAR(1024),
   @DomainUri       VARCHAR(2048),
   @TermName        VARCHAR(1024),
   @OptionNo        SMALLINT = 0 
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   IF @OptionNo = 0
   BEGIN
      EXEC Data.DataReferenceDomainGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = null, @DomainUri = @DomainUri
      EXEC Data.DataReferenceTermGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = @Root, @DomainUri = @DomainUri, @TermName = @TermName
      EXEC Data.DataReferenceElementGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = @Root, @DomainUri = @DomainUri
   END
   ELSE
   IF @OptionNo = 1
   BEGIN
      EXEC Data.DataReferenceDomainGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = @Root, @DomainUri = @DomainUri
   END
   ELSE
   IF @OptionNo = 2
   BEGIN
      EXEC Data.DataReferenceElementGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = @Root, @DomainUri = @DomainUri
   END
   ELSE
   IF @OptionNo = 3
   BEGIN
      EXEC Data.DataReferenceTermGet @SessionId = @SessionId, 
         @OrganizationId = @OrganizationId, @Root = @Root, @DomainUri = @DomainUri, @TermName = @TermName
   END
END
