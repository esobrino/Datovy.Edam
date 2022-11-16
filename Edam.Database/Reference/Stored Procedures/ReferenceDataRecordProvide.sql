
CREATE PROCEDURE Reference.ReferenceDataRecordProvide
   @SessionId           VARCHAR(40),
   @OrganizationId      VARCHAR(20),
   @OperationType       SMALLINT,
   @RequestType         SMALLINT,
   @ReferenceObjectName VARCHAR(128),
   @Items               Reference.ReferenceDataElementCollectionItem READONLY,
   @OptionNo            SMALLINT = 0,
   @OutResult           VARCHAR(1024) OUTPUT
WITH EXECUTE AS 'KifDbWriter'
AS
BEGIN
   SET NOCOUNT ON

   --DECLARE @diagrval INTEGER
   --EXEC @diagrval = Application.ApplicationSessionValidate @SessionId, @OrganizationId, 
   --   '', 'Reference.ReferenceDataRecordProvide'
   --IF @diagrval <> 0
   --   RETURN @diagrval

   IF @OperationType not in (20,30)
      RETURN -112 -- Invalid Reference Data Operation

   -- 1 = check duplicate record, 2 = exists, 3 = select, 
   -- 4 = insert / update, 5 = delete, 6 = exec, 7 = record status update
   IF @RequestType not in (1,2,3,4,5,6,7)
      RETURN -113

   DECLARE @rval INTEGER

   -- 2 - Exists
   IF @RequestType in (1, 2, 4) -- check for 1 - duplicate, 2 - exists or 4 - insert/update
   BEGIN
      DECLARE @chk SMALLINT = case when @RequestType in (2,4) -- unique record exists?
                              then 0      -- 0 = unique record exists (keys only); 
                              else 1 end  -- 1 = duplicate record
      EXEC @rval = Reference.ReferenceDataRecordExists
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @CheckRecord         = @chk,
         @Items               = @Items
	  IF @RequestType in (1,2)
	  BEGIN
	     IF @rval = 1
           SET @OutResult = 'true'
        ELSE
	        SET @OutResult = 'false'
	     RETURN @rval
      END
   END

   -- 3 - Select
   IF @RequestType = 3
   BEGIN
      EXEC @rval = Reference.ReferenceDataRecordGet
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @Items               = @Items
	   IF @rval >= 0
	      SET @OutResult = 'success'
	   ELSE
	      SET @OutResult = 'failed'
      RETURN @rval
   END

   -- 4 - Insert
   IF @RequestType = 4 and @rval = 0
   BEGIN
      EXEC @rval = Reference.ReferenceDataRecordInsert
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @Items               = @Items
	   IF @rval >= 0
	      SET @OutResult = 'success'
	   ELSE
	      SET @OutResult = 'failed'
      RETURN @rval
   END
   ELSE
   -- 4 - Update
   IF @RequestType = 4
   BEGIN
      EXEC @rval = Reference.ReferenceDataRecordUpdate
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @Items               = @Items
	   IF @rval >= 0
	      SET @OutResult = 'success'
	   ELSE
	      SET @OutResult = 'failed'
      RETURN @rval
   END

   -- 6 - Exec Store Proc
   IF @RequestType = 6
   BEGIN
      EXEC @rval = Reference.ReferenceDataRecordCallProcedure
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @Items               = @Items,
         @OptionNo            = @OptionNo,
         @OutResult           = @OutResult OUTPUT
      RETURN @rval
   END

   -- 7 - Update Table Record Status Code
   IF @RequestType = 7
   BEGIN
      EXEC @rval = Reference.ReferenceDataRecordStatusUpdate
         @SessionId           = @SessionId,
         @OrganizationId      = @OrganizationId,
         @OperationType       = @OperationType,
         @ReferenceObjectName = @ReferenceObjectName,
         @Items               = @Items,
         @OptionNo            = @OptionNo
	   IF @rval >= 0
	      SET @OutResult = 'success'
	   ELSE
	      SET @OutResult = 'failed'
      RETURN @rval
   END

END
