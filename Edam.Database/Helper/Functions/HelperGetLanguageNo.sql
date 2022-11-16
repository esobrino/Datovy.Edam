
CREATE FUNCTION Helper.HelperGetLanguageNo(
   @Language VARCHAR(40))
RETURNS SMALLINT
AS
BEGIN
   DECLARE @langNo SMALLINT
   SET @Language = lower(@Language)
   IF @Language = 'spa' or @Language = 'esp' or @Language = 'es-PR' or
      @Language = 'es' or @Language = 'español'
      SET @langNo = 0
   ELSE
      SET @langNo = 1
   RETURN @langNo
END
