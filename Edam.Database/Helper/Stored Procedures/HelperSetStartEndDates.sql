
CREATE  PROCEDURE Helper.HelperSetStartEndDates
   @StartDate    DATETIME,
   @EndDate      DATETIME,
   @OutStartDate DATETIME OUTPUT,
   @OutEndDate   DATETIME OUTPUT
AS
BEGIN
   SET NOCOUNT ON
   IF @StartDate is null
      SET @StartDate = '1900-01-01'
   IF @EndDate is null
      SET @EndDate = '2100-01-01'
   IF @StartDate > @EndDate
   BEGIN
      DECLARE @tmp DATETIME
      SET @tmp = @StartDate
      SET @StartDate = @EndDate
      SET @EndDate = @tmp
   END
   SET @OutStartDate = @StartDate
   SET @OutEndDate = @EndDate + 1
END
