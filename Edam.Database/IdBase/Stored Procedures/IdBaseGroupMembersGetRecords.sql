
CREATE PROCEDURE IdBase.IdBaseGroupMembersGetRecords
   @SessionId  VARCHAR(40),
   @LanguageNo SMALLINT = 0
-- WITH EXECUTE AS 'kifEntry'
AS
BEGIN
   SET NOCOUNT ON
   SELECT GroupNo,
          TypeNo,
          Length,
          Template,
          Required,
          TableName,
          TypeName,
          GroupDescription,
          TypeDescription
     FROM IdBase.IdBaseGroupMembersList(@LanguageNo)
    ORDER BY GroupDescription,
             TypeDescription
END
