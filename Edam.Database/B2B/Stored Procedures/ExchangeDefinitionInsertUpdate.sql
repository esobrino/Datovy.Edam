
CREATE PROCEDURE [B2B].[ExchangeDefinitionInsertUpdate]
   @SessionId               VARCHAR(40),
   @DataOwnerId             VARCHAR(20) = '',
   @ItemNo                  INT,
   @ExchangeCode            VARCHAR(40) = '',
   @SegmentName             VARCHAR(128) = '',
   @BaseEntityName          VARCHAR(128) = '',
   @SegmentEntityName       VARCHAR(128) = '',
   @Position                VARCHAR(20) = '',
   @SegmentCode             VARCHAR(20) = '',
   @SegmentRepeat           VARCHAR(20) = '',
   @SegmentRequiredType     VARCHAR(20) = '',
   @SegmentReference        VARCHAR(20) = '',
   @DataElementId           VARCHAR(20) = '',
   @DataElementType         VARCHAR(20) = '',
   @DataElement             VARCHAR(128) = '',
   @DataElementDescription  VARCHAR(512) = '',
   @DataElementRequiredType VARCHAR(20) = '',
   @DataType                VARCHAR(20) = '',
   @MinimumLength           SMALLINT = null,
   @MaximumLength           SMALLINT = null,
   @Loop                    VARCHAR(20) = '',
   @LoopLevel               SMALLINT = null,
   @VersionID               VARCHAR(40) = '',
   @OutItemNo               INT OUTPUT
AS
BEGIN
   SET NOCOUNT ON

   IF @ItemNo is null or @ItemNo < 1
   BEGIN
      SELECT @ItemNo = ItemNo
        FROM B2B.ExchangeDefinition
       WHERE ExchangeCode = @ExchangeCode
         AND SegmentCode = @SegmentCode
         AND SegmentReference = @SegmentReference
         AND SegmentEntityName = @SegmentEntityName
         AND DataElementId = @DataElementId
   END

   IF NOT EXISTS (SELECT * FROM B2B.ExchangeDefinition
                   WHERE @ItemNo is not null
                     AND ItemNo = @ItemNo)
   BEGIN
      INSERT INTO B2B.ExchangeDefinition (
          ExchangeCode,      SegmentName,             SegmentEntityName,
          SegmentCode,       SegmentRepeat,           SegmentRequiredType,
          SegmentReference,  DataElementID,           DataElementType,
          DataElement,       DataElementDescription,  DataElementRequiredType,
          MinimumLength,     MaximumLength,           DataType,
          UpdateSessionID,   DataOwnerId,             BaseEntityName,
          Position,          Loop,                    LoopLevel,
          VersionID
      ) VALUES (
         @ExchangeCode,     @SegmentName,            @SegmentEntityName,
         @SegmentCode,      @SegmentRepeat,          @SegmentRequiredType,
         @SegmentReference, @DataElementID,          @DataElementType,
         @DataElement,      @DataElementDescription, @DataElementRequiredType,
         @MinimumLength,    @MaximumLength,          @DataType,
         @SessionId,        @DataOwnerId,            @BaseEntityName,
         @Position,         @Loop,                   @LoopLevel,
         @VersionID)
      SET @OutItemNo = @@IDENTITY
   END
   ELSE
   BEGIN
      UPDATE B2B.ExchangeDefinition
         SET UpdateSessionID = @SessionID,
             LastUpdateDateTime = getutcdate(),
             ExchangeCode = @ExchangeCode,
             SegmentName = @SegmentName,
             BaseEntityName = @BaseEntityName,
             SegmentEntityName = @SegmentEntityName,
             Position = @Position,
             SegmentCode = @SegmentCode,
             SegmentRepeat = @SegmentRepeat,
             SegmentRequiredType = @SegmentRequiredType,
             SegmentReference = @SegmentReference,
             DataElementID = @DataElementID,
             DataElementType = @DataElementType,
             DataElement = @DataElement,
             DataElementDescription = @DataElementDescription,
             DataElementRequiredType = DataElementRequiredType,
             MinimumLength = @MinimumLength,
             MaximumLength = @MaximumLength,
             DataType = @DataType,
             Loop = @Loop,
             LoopLevel = @LoopLevel,
             VersionID = @VersionID
       WHERE ItemNo = @ItemNo
   END
END
