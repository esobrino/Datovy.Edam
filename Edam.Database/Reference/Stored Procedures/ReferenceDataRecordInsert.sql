
CREATE PROCEDURE Reference.ReferenceDataRecordInsert
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @Items               Reference.ReferenceDataElementCollectionItem READONLY
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON
   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordInsert'
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
           @vals        NVARCHAR(MAX) = '',
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
      BEGIN
         SET @key = 1
         SET @value = @OrganizationId
      END

      -- A-active; I-Inactive; D-deleted; P-permanent-deleted, S-seald
      IF @field = 'RecordStatusCode' and (@value is null or @value = '' or
         @value not in ('A','I','D','X','S'))
         SET @value = 'A'

      SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
                + QUOTENAME(@field)
      SET @vals = @vals + case when len(@vals) = 0 then '' else ',' end
                + String.StringQuotedValue(@value,@type)

      SET @count = @count + 1
   END

   -- add Update Session ID...
   SET @cols = @cols + case when len(@cols) = 0 then '' else ',' end
             + QUOTENAME('UpdateSessionID')
   SET @vals = @vals + case when len(@vals) = 0 then '' else ',' end
             + '''' + @SessionId + ''''

   -- prepare and execute query
   DECLARE @result INTEGER
   SET @qry = 'INSERT INTO ' 
            + String.StringQuotedShemaTable(@ReferenceObjectName) 
            + ' (' + @cols + ') VALUES (' + @vals + ')'
   EXEC(@qry)
   --SELECT @qry
END
