
CREATE PROCEDURE Reference.ReferenceDataTemplateMappingGet
   @SessionId      VARCHAR(40),
   @OrganizationId VARCHAR(20),
   @TemplateNo     BIGINT = null,
   @ResourceName   VARCHAR(128) = null
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON
   DECLARE @mapData      VARCHAR(MAX),
           @parentNodeNo BIGINT,
           @childNodeNo  BIGINT,
           @pTableName   VARCHAR(128),
           @cTableName   VARCHAR(128),
           @pElement     VARCHAR(128),
           @cElement     VARCHAR(128),
           @dElement     VARCHAR(128),
           @gElement     VARCHAR(128),
           @lElement     VARCHAR(128),
           @sValue       VARCHAR(128),
           @dValue       VARCHAR(128),
           @title        VARCHAR(128),
           @query        VARCHAR(1024)

   IF @TemplateNo is null 
   BEGIN
      SELECT @TemplateNo = TemplateNo 
        FROM Reference.ReferenceDataEditTemplate
       WHERE OrganizationId = @OrganizationId
         AND ResourceName = @ResourceName
   END

   DECLARE @tbl table(ObjectNo int,                        Type smallint,
                      ParentNodeNo bigint,                 ChildNodeNo bigint,
                      Name varchar(128),                   Description varchar(128),
                      ParentElementName varchar(128),      ChildElementName varchar(128),
                      DescriptionElementName varchar(128), Title varchar(128),
                      SelectedValue      varchar(128),     DefaultValue varchar(128),
                      LinkName varchar(128),               LinkType int,
                      LinkObjectNo int,                    GroupElementName varchar(128),
                      LinkElementName varchar(128),        Id int identity primary key) 

   SELECT @mapData = MapData
     FROM Reference.ReferenceDataEditTemplate
    WHERE TemplateNo = @TemplateNo
   -- SELECT @mapData

   INSERT INTO @tbl (ObjectNo,          Type,              ParentNodeNo,
                     ChildNodeNo,       Name,              Description,
                     ParentElementName, ChildElementName,  DescriptionElementName,
                     Title,             SelectedValue,     DefaultValue,
                     LinkName,          LinkType,          LinkObjectNo,
                     GroupElementName,  LinkElementName)
   SELECT a.ObjectNo,          a.Type,              a.ParentNodeNo,
          a.ChildNodeNo,       a.Name,              a.Description,
          b.ParentElementName, b.ChildElementName,  b.DescriptionElementName,
          b.Title,             b.SelectedValue,     b.DefaultValue,
          b.Name,              b.Type,              b.ObjectNo,
          b.GroupElementName,  b.LinkElementName
 --SELECT *
     FROM OPENJSON(@mapData)  
     WITH (ObjectNo     int,
           Type         smallint,
           ParentNodeNo int,
           ChildNodeNo  int,
           Name         varchar(128),
           Description  varchar(80),
           Link         nvarchar(max) AS JSON) a
     CROSS APPLY OPENJSON(a.Link)
      WITH (ParentElementName      varchar(128),
            ChildElementName       varchar(128),
            DescriptionElementName varchar(128),
            GroupElementName       varchar(128),
            LinkElementName        varchar(128),
            Title                  varchar(128),
            SelectedValue          varchar(128),
            DefaultValue           varchar(128),
            Name                   varchar(128),
            Type                   smallint,
            ObjectNo               int) b

   --SELECT * from @tbl
   DECLARE @cnt INTEGER = 1,
           @tot SMALLINT = (SELECT count(*) FROM @tbl),
           @gel varchar(512)
   WHILE @cnt <= @tot
   BEGIN
   
      SELECT @parentNodeNo = ParentNodeNo,
             @childNodeNo = ChildNodeNo,
             @pElement = ParentElementName,
             @cElement = ChildElementName,
             @dElement = DescriptionElementName,
             @gElement = GroupElementName,
             @lElement = LinkElementName,
             @sValue = SelectedValue,
             @dValue = DefaultValue,
             @title = Title
        FROM @tbl
       WHERE Id = @cnt

      SELECT @pTableName = ResourceName
        FROM Reference.ReferenceDataEditTemplate 
       WHERE TemplateNo = @parentNodeNo
      SELECT @cTableName = ResourceName
        FROM Reference.ReferenceDataEditTemplate 
       WHERE TemplateNo = @childNodeNo

      SELECT @parentNodeNo ParentNodeNo,
          -- @pTableName ParentResourceName,
             @childNodeNo  ChildNodeNo,
          -- @cTableName ChildResourceName,
             @pElement ParentElementName,
             @cElement ChildElementName,
             @dElement DescriptionElementName,
             @gElement GroupElementName,
             @lElement LinkElementName,
             @sValue SelectedValue,
             @dValue DefaultValue,
             @title Title

      SET @gel = ''
      IF @gElement is not null
         SET @gel = ' [' + @gElement + '] GroupId,'
      SET @query = 'SELECT ' + @gel + ' [' + @pElement + '] CodeId, [' + @dElement + '] Description ' +
                   'FROM ' + String.StringQuotedShemaTable(@pTableName)
      EXEC(@query)

      --SELECT *
      --  FROM @tbl
      -- WHERE Id = @cnt
      SET @cnt = @cnt + 1
   END
END
