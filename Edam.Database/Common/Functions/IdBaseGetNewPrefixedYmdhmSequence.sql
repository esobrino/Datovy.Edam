
-- DROP FUNCTION [Common].[IdBaseGetNewPrefixedYmdhmSequence]
CREATE FUNCTION [Common].[IdBaseGetNewPrefixedYmdhmSequence] (
   @PrefixId       VARCHAR(2),   -- prefix (e.g. SB for submission)
   @SequenceNo     INTEGER)
RETURNS VARCHAR(20)
AS
BEGIN
   DECLARE @OutId VARCHAR(20)
   SET @OutId = NULL

   -- current running year and other needed info
   DECLARE @ct         DATETIME2,
           @currYear   VARCHAR(4),
           @currMonth  CHAR(2),
           @currDay    CHAR(2),
           @currHour   CHAR(2),
           @currMins   CHAR(2),
           @currCount  INTEGER

   SET @ct       = getutcdate()
   SET @currYear = cast(year(@ct) as char(4))
   SET @currMonth= substring(cast(month(@ct) as char(2)),1,2)
   SET @currDay  = substring(cast(day(@ct) as char(2)),1,2)
   SET @currHour = substring(cast(datepart(hh,@ct) as char(2)),1,2)
   SET @currMins = substring(cast(datepart(mi,@ct) as char(2)),1,2)

   SET @currYear = substring(@currYear,3,2)

   IF len(@currMonth) = 1
      SET @currMonth = '0' + @currMonth
   IF len(@currDay) = 1
      SET @currDay = '0' + @currDay
   IF len(@currHour) = 1
      SET @currHour = '0' + @currHour
   IF len(@currMins) = 1
      SET @currMins = '0' + @currMins

   --IF @SequenceNo < 0
   --   SET @SequenceNo = next value for Common.IdBaseCounter
   SET @currCount = @SequenceNo

   -- finally build the new State Id
   DECLARE @new VARCHAR(10)

   SET @new = rtrim(cast(@currCount as varchar(6)))
   SET @new = replicate('0',6-len(@new))+@new
   SET @OutId = @PrefixId + @currYear + @currMonth + @currDay +
      @currHour + @currMins + @new
   RETURN @OutId
END
