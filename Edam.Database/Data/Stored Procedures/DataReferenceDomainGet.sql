
CREATE PROCEDURE Data.DataReferenceDomainGet
   @SessionId       VARCHAR(40) = NULL,
   @OrganizationId  VARCHAR(20),
   @Root            VARCHAR(1024) = '',
   @DomainUri       VARCHAR(2048),
   @OptionNo        SMALLINT = 0 
AS
BEGIN
   SET NOCOUNT ON
   
   IF @Root is null
      SET @Root = ''
   IF @DomainUri is null
      SET @DomainUri = ''

   SELECT CreatedDate,
          LastUpdateDate,
          OrganizationId,
          DataOwnerId,
          Prefix,
          Root,
          TypeNo,
          Domain,
          DomainNo,
          DomainID,
          DomainURI,
          DomainName,
          Description,
          UpdateSessionID,
          RecordStatusCode
     FROM Data.DataDomain
    WHERE OrganizationId = @OrganizationId
      AND (@Root = ''
       OR  Root = @Root)
      AND (@DomainUri = ''
       OR   DomainUri like '%' + @DomainUri + '%')
END
