
CREATE PROCEDURE Data.DataDomainUpsert
   @SessionId        VARCHAR(40) = NULL,
   @OrganizationId   VARCHAR(20),
   @DomainNo         INTEGER = NULL,
   @DomainId         VARCHAR(20),
   @DataOwnerId      VARCHAR(20),
   @ReferenceDate    DATETIME = null,
   @DomainUri        VARCHAR(2048),
   @DomainUriPrefix  VARCHAR(20),
   @Root             VARCHAR(1024) = null,
   @Domain           VARCHAR(2048) = null,
   @DomainName       VARCHAR(256),
   @TypeNo           SMALLINT = 0,
   @Description      VARCHAR(MAX),
   @OptionNo         SMALLINT = 0,  -- 0 = insert or update only
   @OutDomainID      VARCHAR(20) OUTPUT,
   @OutDomainNo      INTEGER OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON

   DECLARE @did VARCHAR(20),
           @dno INTEGER

   SELECT @did = DomainId,
          @dno = DomainNo
     FROM Data.DataDomain
    WHERE OrganizationId = @OrganizationId
      AND ((DomainNo = @DomainNo
      AND   DomainId = @DomainId)
       OR  DomainURI = @DomainUri)

   IF @did is null
   BEGIN
      IF @DomainId is null or @DomainId = ''
      BEGIN
         SELECT @did = DomainId,
                @dno = DomainNo
           FROM Data.DataDomain
          WHERE OrganizationId = @OrganizationId
            AND DomainUri = @DomainUri
      END
      ELSE
         SET @did = @DomainId
   END

   SET @OutDomainNo = @dno
   SET @OutDomainId = @did

   IF @ReferenceDate is null
      SET @ReferenceDate = getutcdate()
			
   -- 1 - If Domain ID & No exists then return
   IF @OptionNo = 1 and @did is not null and @dno is not NULL
      RETURN
			
   IF @did is null
   BEGIN
      -- 110 = Domain URI Prefix
      DECLARE @desc VARCHAR(1024) = 'Domain URI Prefix - ' + @DomainUriPrefix
      EXEC Data.DataReferenceObjectNew @SessionId = @SessionId, @ReferenceDate = @ReferenceDate,
         @ReferenceTypeNo = 110, @AliasId = @DomainUriPrefix, @AlternateId = @DomainUriPrefix,
         @Description = @desc, @StatusNo = 1, @OutReferenceId = @did OUTPUT
   END
	 
   DECLARE @ptxt VARCHAR(256) = 'Prefix - ' + @DomainUriPrefix + '. Root - ' + @Root + '. Domain - ' + @Domain
   IF @Description is null
      SET @Description = @ptxt
   IF @DomainName is NULL
      SET @DomainName = @ptxt
						
   IF @OutDomainNo is NULL
   BEGIN
      INSERT INTO Data.DataDomain (
         OrganizationId,  DataOwnerId, Prefix,
         Root,            Domain,      TypeNo,
         DomainId,        DomainUri,   DomainName,
         Description,     UpdateSessionId)
      VALUES (
        @OrganizationId, @DataOwnerId, @DomainUriPrefix,
        @Root,           @Domain,      @TypeNo,
        @did,            @DomainUri,   @DomainName,
        @Description,    @SessionId)
      SET @OutDomainNo = @@IDENTITY
   END
   ELSE
   -- 2 = Force update
   IF @OptionNo = 2
   BEGIN
      UPDATE Data.DataDomain
         SET DomainName = @DomainName,
             Description = @Description,
             UpdateSessionId = @SessionId,
             LastUpdateDate = (getutcdate())
       WHERE DomainNo = @OutDomainNo						
   END
END
