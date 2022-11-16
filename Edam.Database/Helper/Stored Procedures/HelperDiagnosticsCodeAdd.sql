
CREATE PROCEDURE Helper.HelperDiagnosticsCodeAdd
   @SeverityNo  SMALLINT = 1,
   @CodeNo      INTEGER,
   @CategoryNo  SMALLINT,
   @MessageText VARCHAR(1024),
   @SpanishText VARCHAR(1024) = NULL
AS
BEGIN
   SET NOCOUNT ON
   IF @SpanishText is null or @SpanishText = ''
      SET @SpanishText = @MessageText
   IF @SeverityNo is null or @SeverityNo = 0
      SET @SeverityNo = 1
   IF EXISTS(SELECT * FROM Diagnostic.DiagnosticCodes
              WHERE CodeNo = @CodeNo)
      RETURN
   INSERT INTO Diagnostic.DiagnosticCodes
      ( CodeNo,       SeverityNo,          CategoryNo,
        Description,  SpanishDescription)
   VALUES
      (@CodeNo,      @SeverityNo,         @CategoryNo,
       @MessageText, @SpanishText)
END
