
CREATE PROCEDURE Reference.ReferenceDataRecordStatusUpdate
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @Items               Reference.ReferenceDataElementCollectionItem READONLY,
   @OptionNo            SMALLINT = 0
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON
   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordUpdate'
   --IF @diagrval <> 0
   --   RETURN @diagrval
   IF @OperationType not in (20)
      RETURN -112 -- Invalid Reference Data Operation
         
   DECLARE @sts CHAR(1) =
      case @OptionNo when 1 then 'A'
                     when 2 then 'I'
                     when -1 then 'X'
                     when 999 then 'D' else '*' end

   IF @sts = '*'
      RETURN -114 -- Invalid Reference Data Record Status Value

   -- prepare query
   DECLARE @totalRecord INTEGER = (SELECT count(*) FROM @Items),
           @count       INTEGER = 0,
           @field       VARCHAR(128),
           @type        SMALLINT,
           @key         SMALLINT,
           @value       VARCHAR(128),
           @cols        NVARCHAR(MAX) = '',
           @wer         NVARCHAR(MAX) = '',
           @qry         NVARCHAR(MAX) = ''

   WHILE @count < @totalRecord
   BEGIN
      SET @value = null
      SELECT @field = Name,
             @type  = ValueType,
             @key   = KeyType,
             @value = ValueText
       FROM @Items
       WHERE SerialNo = @count
              
      IF @field = 'OrganizationId'
      BEGIN
         SET @key = 1
         SET @value = @OrganizationId
      END

      IF @key = 1
         SET @wer  = @wer + case when len(@cols) = 0 then '' else ' AND ' end
                   + QUOTENAME(@field) + '='
                   + String.StringQuotedValue(@value,@type)

      SET @count = @count + 1
   END

   SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
             + QUOTENAME('RecordStatusCode') + '='
             + '''' + @sts + ''''
   SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
             + QUOTENAME('UpdateSessionID') + '='
             + '''' + @SessionId + ''''
   SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
             + QUOTENAME('LastUpdateDate') + '='
             + '''' + convert(varchar(20),getutcdate(),120) + ''''

   DECLARE @result INTEGER
   SET @qry = 'UPDATE ' 
            + String.StringQuotedShemaTable(@ReferenceObjectName) 
            + ' SET ' + @cols
            + ' WHERE ' + @wer
   EXEC(@qry)
   --SELECT @qry
END
