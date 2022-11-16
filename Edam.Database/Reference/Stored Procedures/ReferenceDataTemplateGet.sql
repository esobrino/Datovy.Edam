
-- @OptionNo: 0 | null - returns all
-- @OptionNo: 1        - get template data
-- @OptionNo: 2        - get template groups
-- @OptionNo: 3        - get map/links
-- @OptionNo: 4        - get template and groups
-- @OptionNo: 5        - get template, and map/links
-- @OptionNo: 32767    - get all templates

CREATE PROCEDURE Reference.ReferenceDataTemplateGet
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @ReferenceObjectName VARCHAR(128) = null,
   @TemplateNo          BIGINT = null,
   @GroupNo             BIGINT = null,
   @OptionNo            SMALLINT = 4
WITH EXECUTE AS 'KifDbReader'
AS
BEGIN
   SET NOCOUNT ON

   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataTemplateGet'
   --IF @diagrval <> 0
   --   RETURN @diagrval

   IF @ReferenceObjectName = ''
      SET @ReferenceObjectName = null

   SELECT CreatedDate,
          LastUpdateDate,
          OrganizationId,
          TemplateNo,
          TemplateVersionId,
          ResourceName,
          TemplateDefaultNo,
          TemplateTypeNo,
          TemplateData,
          MapData,
          GroupData,
          Title,
          GroupNo,
          ScopeNo,
          StatusNo,
          PostUpdateScript
     FROM Reference.ReferenceDataEditTemplate
    WHERE OrganizationId = @OrganizationId
      AND (ResourceName = @ReferenceObjectName
      AND  @ReferenceObjectName is not null)
       OR (TemplateNo = @TemplateNo
      AND  @TemplateNo is not null)
       OR (GroupNo = @GroupNo
      AND  @GroupNo is not null)
       OR (@GroupNo = 32767)

   SELECT GroupNo CodeId,
          GroupName Value
     FROM Reference.ReferenceDataEditGroup
    WHERE OrganizationId = @OrganizationId
      AND (GroupNo = @GroupNo
      AND  @GroupNo is not null)
       OR (@GroupNo = 32767)

   -- MAP DATA - is requested after Reference.ReferenceDataRecordGet
   IF (@OptionNo is null or @OptionNo in (0,3,5)) and
      (@TemplateNo is not null)
   BEGIN
      EXEC Reference.ReferenceDataTemplateMappingGet 
         @SessionId, @OrganizationId, @TemplateNo, @ReferenceObjectName
   END
END
