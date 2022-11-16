
CREATE FUNCTION IdBase.IdBaseGroupMembersList (
   @LanguageNo SMALLINT)
RETURNS TABLE
AS
RETURN
(
   SELECT m.GroupNo,
          GroupDescription =
             case @LanguageNo when 0
             then g.SpanishDescription
             else g.Description end,
          m.TypeNo,
          TypeDescription =
             case @LanguageNo when 0
             then t.SpanishDescription
             else t.Description end,
          t.Length,
          t.Template,
          t.Required,
          isnull(t.TableName,'') TableName,
          t.TypeName
     FROM IdBase.IdBaseGroupMembers m
     JOIN IdBase.IdBaseGroups g
       ON m.GroupNo = g.IdNo
     JOIN IdBase.IdBaseTypes t
       ON t.TypeNo = m.TypeNo
)
