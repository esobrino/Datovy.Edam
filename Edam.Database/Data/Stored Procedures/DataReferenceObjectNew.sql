
CREATE PROCEDURE Data.DataReferenceObjectNew
   @SessionId       VARCHAR(40) = NULL,
   @ReferenceId     VARCHAR(20) = NULL, -- if null, create it here
   @ReferenceDate   DATETIME2 = NULL,
   @ReferenceTypeNo SMALLINT = NULL,
   @AliasId         VARCHAR(20) = NULL,
   @AlternateId     VARCHAR(40) = NULL,
   @Description     VARCHAR(1024) = NULL,
   @StatusNo        SMALLINT = NULL,
   @OutReferenceId  VARCHAR(20) OUTPUT
AS
BEGIN
   SET NOCOUNT ON
   IF @ReferenceDate is null
      SET @ReferenceDate = getutcdate()
   IF @ReferenceTypeNo is null
      SET @ReferenceTypeNo = 0
   IF @StatusNo is null
      SET @StatusNo = 0
   IF @ReferenceId = ''
			   SET @ReferenceId = null
						
   IF @ReferenceId is null
      SET @OutReferenceId = (
         [Common].[IdBaseGetNewPrefixedYmdhmSequence]('RF',
            next value for Common.IdBaseReferenceCounter))
   ELSE
      SET @OutReferenceId = @ReferenceId

   INSERT INTO Data.DataReferenceObject
      ( ReferenceDate,    ReferenceTypeNo,
        AlternateId,      Description,
        StatusNo,         UpdateSessionId,
        ReferenceId,      AliasId)
   VALUES
      (@ReferenceDate,   @ReferenceTypeNo,
       @AlternateId,     @Description,
       @StatusNo,        @SessionId,
       @OutReferenceId,  @AliasId)
END
