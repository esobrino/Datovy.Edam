
CREATE PROCEDURE IdBase.IdBaseGetNewPrefixedYmdhmId
   @SessionId      VARCHAR(40),
   @OrganizationId VARCHAR(20),
   @PrefixId       VARCHAR(2),
   @OutId          VARCHAR(20) OUTPUT
AS
BEGIN
   SET NOCOUNT ON
   SET @OutId = NULL

   -- current running year and other needed info
   DECLARE @ct         DATETIME,
           @currYear   CHAR(4),
           @currMonth  CHAR(2),
           @currDay    CHAR(2),
           @currHour   CHAR(2),
           @currMins   CHAR(2),
           @currCount  INTEGER

   SET @ct       = getdate()
   SET @currYear = cast(year(@ct) as char(4))
   SET @currMonth= substring(cast(month(@ct) as char(2)),1,2)
   SET @currDay  = substring(cast(day(@ct) as char(2)),1,2)
   SET @currHour = substring(cast(datepart(hh,@ct) as char(2)),1,2)
   SET @currMins = substring(cast(datepart(mi,@ct) as char(2)),1,2)

   IF len(@currMonth) = 1
      SET @currMonth = '0' + @currMonth
   IF len(@currDay) = 1
      SET @currDay = '0' + @currDay
   IF len(@currHour) = 1
      SET @currHour = '0' + @currHour
   IF len(@currMins) = 1
      SET @currMins = '0' + @currMins

   -- make sure we are doing this in isolation
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
   BEGIN TRANSACTION

   IF NOT EXISTS(SELECT * FROM IdBase.IdBasePrefixCounters
                  WHERE OrganizationId = @OrganizationId
                    AND PrefixId = @PrefixId)
   BEGIN
      INSERT INTO IdBase.IdBasePrefixCounters
         ( OrganizationId,  PrefixId,  IdString,  Description,  IdCount)
      VALUES
         (@OrganizationId, @PrefixId, @PrefixId, @PrefixId,     -1) 
    
      IF (@@ERROR <> 0)
      BEGIN
         ROLLBACK TRAN
         SET TRANSACTION ISOLATION LEVEL READ COMMITTED
         RETURN -1001
      END
   END

   -- get previous counter / year info
   SELECT @currCount = IdCount
     FROM IdBase.IdBasePrefixCounters
    WHERE OrganizationId = @OrganizationId
      AND PrefixId = @PrefixId

   IF (@@ERROR <> 0)
   BEGIN
      ROLLBACK TRAN
      SET TRANSACTION ISOLATION LEVEL READ COMMITTED
      RETURN -1002
   END
   
   IF @currCount is null
   BEGIN
      INSERT INTO IdBase.IdBasePrefixCounters
         (PrefixId, OrganizationId, IdCount, IdString, Description)
      VALUES
         (@PrefixId, @OrganizationId, -1, '', '')
   END

   -- make sure that we don't overflow count
   IF @currCount >= 999999 or @currCount is null
      SET @currCount = -1

   -- expected daily normal state-id count
   SET @currCount = @currCount + 1
   UPDATE IdBase.IdBasePrefixCounters
      SET IdCount = @currCount
    WHERE OrganizationId = @OrganizationId
      AND PrefixId = @PrefixId

   IF (@@ERROR <> 0)
   BEGIN
      ROLLBACK TRAN
      SET TRANSACTION ISOLATION LEVEL READ COMMITTED
      RETURN -1003
   END

   -- finally build the new State Id
   DECLARE @new VARCHAR(10)

   SET @new = rtrim(cast(@currCount as varchar(6)))
   SET @new = replicate('0',6-len(@new))+@new
   SET @OutId = @PrefixId + @currYear + @currMonth + @currDay +
      @currHour + @currMins + @new

   -- commit transaction
   COMMIT TRANSACTION
   SET TRANSACTION ISOLATION LEVEL READ COMMITTED
END  -- end of IdBase.IdBaseGetNewPrefixedYmId
