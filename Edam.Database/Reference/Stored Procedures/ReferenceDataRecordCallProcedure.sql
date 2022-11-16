
CREATE PROCEDURE Reference.ReferenceDataRecordCallProcedure
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @Items               Reference.ReferenceDataElementCollectionItem READONLY,
   @OptionNo            SMALLINT = 0,
   @OutResult           VARCHAR(1024) OUTPUT
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   SET @OutResult = ''
   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordCallProcedure'
   --IF @diagrval <> 0
   --   RETURN @diagrval
   IF @OperationType not in (30)
      RETURN -112 -- Invalid Reference Data Operation

   -- prepare query
   DECLARE @totalRecord INTEGER = (SELECT count(*) FROM @Items),
           @count       INTEGER = 0,
           @field       VARCHAR(128),
           @type        SMALLINT,
           @key         SMALLINT,
           @params      NVARCHAR(MAX) = '',
           @value       NVARCHAR(1024),
           @qry         NVARCHAR(MAX) = ''

   WHILE @count < @totalRecord
   BEGIN
      SELECT @field = Name,
             @type  = ValueType,
             @key   = KeyType,
             @value = ValueText
        FROM @Items
       WHERE SerialNo = @count
                     
      IF @field = 'OrganizationId' or @field = '@OrganizationId'
      BEGIN
         SET @key = 1
         SET @value = @OrganizationId
      END

      SET @params = @params + case when len(@params) = 0 then '' else ',' end
                  + String.StringQuotedValue(@field,9999) + '='
                  + String.StringQuotedValue(@value,@type)

      SET @count = @count + 1
   END
   DECLARE @result   INTEGER,
           @optional VARCHAR(1024) = ''
   IF @OptionNo = 1
      SET @optional =  case when len(@params) = 0 then '' else ',' end
			+ '@OptionNo=' + cast(@OptionNo as varchar)
			+ ',@OutResult=@OutResult OUTPUT'
   
   SET @qry = 'EXEC ' 
            + String.StringQuotedShemaTable(@ReferenceObjectName) 
            + ' ' + @params + case when len(@params) = 0 then '' else ',' end
			+ @optional
   EXEC(@qry)
   --SELECT @qry
END
