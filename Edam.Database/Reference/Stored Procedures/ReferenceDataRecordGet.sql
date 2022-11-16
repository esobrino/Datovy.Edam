
CREATE PROCEDURE Reference.ReferenceDataRecordGet
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @Items               Reference.ReferenceDataElementCollectionItem READONLY
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordGet'
   --IF @diagrval <> 0
   --   RETURN @diagrval
   IF @OperationType not in (20)
      RETURN -112 -- Invalid Reference Data Operation

   -- prepare query
   DECLARE @totalRecord INTEGER = (SELECT count(*) FROM @Items),
           @count       INTEGER = 0,
           @field       VARCHAR(128),
           @type        SMALLINT,
           @key         SMALLINT,
           @value       VARCHAR(128),
           @cols        NVARCHAR(MAX) = '',
           @wer         NVARCHAR(1024) = '',
           @qry         NVARCHAR(MAX) = ''

   WHILE @count < @totalRecord
   BEGIN
      SELECT @field = Name,
             @type  = ValueType,
             @key   = KeyType,
             @value = ValueText
        FROM @Items
       WHERE SerialNo = @count

      IF @field = 'OrganizationId'
         SET @wer = @wer + case when len(@wer) = 0 then ' WHERE ' else ' AND ' end
                  + QUOTENAME(@field) + ' = ''' + @OrganizationId + ''''
      SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
                + QUOTENAME(@field)

      SET @count = @count + 1
   END
   DECLARE @result INTEGER
   SET @qry = 'SELECT ' + @cols + ' FROM ' +
            + String.StringQuotedShemaTable(@ReferenceObjectName) + @wer
   EXEC(@qry)
   --SELECT @qry
END
