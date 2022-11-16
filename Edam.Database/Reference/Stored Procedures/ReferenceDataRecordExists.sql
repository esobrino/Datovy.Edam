
CREATE PROCEDURE Reference.ReferenceDataRecordExists
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @CheckRecord         BIT = 0,
   @Items               Reference.ReferenceDataElementCollectionItem READONLY
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordExists'
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
           @conds       VARCHAR(1024) = '',
           @qry         NVARCHAR(MAX) = ''

   WHILE @count < @totalRecord
   BEGIN
      SELECT @field = Name,
             @type  = ValueType,
             @key   = KeyType,
             @value = ValueText
        FROM @Items
       WHERE SerialNo = @count
      IF @key = 1 or @CheckRecord = 1
      BEGIN
         IF @field = 'OrganizationId'
            SET @value = @OrganizationId
         SET @conds = @conds + 
            case when @conds = '' then '' else ' AND ' end + 
            QUOTENAME(@field) + '=' + String.StringQuotedValue(@value,@type)
      END
      SET @count = @count + 1
   END
   DECLARE @result INTEGER
   SET @qry = 'SET @result='
   SET @qry = @qry +'(case when EXISTS(SELECT * FROM ' + 
      String.StringQuotedShemaTable(@ReferenceObjectName) + ' WHERE (' +
      @conds + ')) then 1 else 0 end)'
   EXEC sp_executesql @qry, N'@result INTEGER OUTPUT', @result OUTPUT
   --SELECT @qry
   RETURN @result
END
