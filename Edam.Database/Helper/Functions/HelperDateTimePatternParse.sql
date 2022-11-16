
-- D 68 100
-- H 72 104
-- M 77 109
-- S 83 115
-- Y 89 121
-- N 78 110

CREATE FUNCTION Helper.HelperDateTimePatternParse(
   @LanguageNo SMALLINT,
   @Date1      DATETIME,
   @Date2      DATETIME,
   @Template   VARCHAR(1024))
RETURNS VARCHAR(1024)
AS
BEGIN
   DECLARE @i1 INTEGER, @i2 INTEGER, @i3 INTEGER, @c INTEGER, @l INTEGER
   DECLARE @p  CHAR(1), @s CHAR(1)

   DECLARE @r  VARCHAR(1024), @t  VARCHAR(80)
   DECLARE @p1 VARCHAR(10),   @p2 VARCHAR(10)
   DECLARE @p3 VARCHAR(10),   @p4 VARCHAR(10)
   DECLARE @k  VARCHAR(1024), @kk CHAR(1)

   SET @r = @Template

   SET @l = len(@Template)
   IF @l <= 0
      RETURN @Template

   SET @c = 1
   WHILE (@c > 0)
   BEGIN
      SET @l  = len(@r)
      SET @i1 = patindex('%&&%',@r)
      IF @i1 = 0
         RETURN @r

      -- parsing a Date? (D1 or D2)
      IF substring(@r,@i1+2,1) = 'D'
      BEGIN
         IF substring(@r,@i1+3,1) = '1'
            SET @t = convert(CHAR(10),@Date1,101)
         ELSE
            SET @t = convert(CHAR(10),@Date2,101)

         SET @p1 = substring(@t,1,2) -- month
         SET @p2 = substring(@t,4,2) -- day
         SET @p3 = substring(@t,7,4) -- year
         SET @p4 = ''
         SET @p  = 'D'

         IF substring(@r,@i1+4,1) not in ('M','D','Y','N','&')
         BEGIN
            SET @s  = substring(@r,@i1+4,1)
            SET @i2 = @i1+5
            SET @i3 = 5
            SET @l  = @l - @i1+5
         END
         ELSE
         BEGIN
            SET @s  = '/'
            SET @i2 = @i1+4
            SET @i3 = 4
            SET @l  = @l - @i1+4
         END

         -- for each date part prepare resulting string in @k

         SET @k  = substring(@r,@i2,@l)
         SET @kk = substring(@k,1,1)
         SET @c  = 1
         SET @t  = ''

         WHILE @kk <> '&'
         BEGIN
            IF @t <> ''
               SET @t = @t + @s

            IF ascii(@kk) = 77  -- M 77
               SET @t = @t + @p1
            ELSE
            IF ascii(@kk) = 109 -- m 109
               SET @t = @t + cast(cast(@p1 as int) as varchar)
            ELSE
            IF ascii(@kk) = 68  -- D 68
               SET @t = @t + @p2
            ELSE
            IF ascii(@kk) = 100 -- d 100
               SET @t = @t + cast(cast(@p2 as int) as varchar)
            ELSE
            IF ascii(@kk) = 89  -- Y 89
               SET @t = @t + @p3
            ELSE
            IF ascii(@kk) = 121 -- y 121
               SET @t = @t + substring(@p3,3,2) + ' '
            ELSE
            IF ascii(@kk) = 78  -- N 78
            BEGIN
               IF @LanguageNo = 0
               BEGIN
                  IF cast(@p1 as int) = 1
                     SET @t = @t + 'Enero'
                  IF cast(@p1 as int) = 2
                     SET @t = @t + 'Febrero'
                  IF cast(@p1 as int) = 3
                     SET @t = @t + 'Marzo'
                  IF cast(@p1 as int) = 4
                     SET @t = @t + 'Abril'
                  IF cast(@p1 as int) = 5
                     SET @t = @t + 'Mayo'
                  IF cast(@p1 as int) = 6
                     SET @t = @t + 'Junio'
                  IF cast(@p1 as int) = 7
                     SET @t = @t + 'Julio'
                  IF cast(@p1 as int) = 8
                     SET @t = @t + 'Agosto'
                  IF cast(@p1 as int) = 9
                     SET @t = @t + 'Septiembre'
                  IF cast(@p1 as int) = 10
                     SET @t = @t + 'Octubre'
                  IF cast(@p1 as int) = 11
                     SET @t = @t + 'Noviembre'
                  IF cast(@p1 as int) = 12
                     SET @t = @t + 'Diciembre'
               END
               ELSE
               BEGIN
                  IF cast(@p1 as int) = 1
                     SET @t = @t + 'January'
                  IF cast(@p1 as int) = 2
                     SET @t = @t + 'February'
                  IF cast(@p1 as int) = 3
                     SET @t = @t + 'March'
                  IF cast(@p1 as int) = 4
                     SET @t = @t + 'April'
                  IF cast(@p1 as int) = 5
                     SET @t = @t + 'May'
                  IF cast(@p1 as int) = 6
                     SET @t = @t + 'June'
                  IF cast(@p1 as int) = 7
                     SET @t = @t + 'July'
                  IF cast(@p1 as int) = 8
                     SET @t = @t + 'August'
                  IF cast(@p1 as int) = 9
                     SET @t = @t + 'September'
                  IF cast(@p1 as int) = 10
                     SET @t = @t + 'Octuber'
                  IF cast(@p1 as int) = 11
                     SET @t = @t + 'November'
                  IF cast(@p1 as int) = 12
                     SET @t = @t + 'December'
               END
            END
            ELSE
            IF ascii(@kk) = 110 -- n 110
            BEGIN
               IF @LanguageNo = 0
               BEGIN
                  IF cast(@p1 as int) = 1
                     SET @t = @t + 'Ene'
                  IF cast(@p1 as int) = 2
                     SET @t = @t + 'Feb'
                  IF cast(@p1 as int) = 3
                     SET @t = @t + 'Mar'
                  IF cast(@p1 as int) = 4
                     SET @t = @t + 'Abr'
                  IF cast(@p1 as int) = 5
                     SET @t = @t + 'May'
                  IF cast(@p1 as int) = 6
                     SET @t = @t + 'Jun'
                  IF cast(@p1 as int) = 7
                     SET @t = @t + 'Jul'
                  IF cast(@p1 as int) = 8
                     SET @t = @t + 'Ago'
                  IF cast(@p1 as int) = 9
                     SET @t = @t + 'Sep'
                  IF cast(@p1 as int) = 10
                     SET @t = @t + 'Oct'
                  IF cast(@p1 as int) = 11
                     SET @t = @t + 'Nov'
                  IF cast(@p1 as int) = 12
                     SET @t = @t + 'Dic'
               END
               ELSE
               BEGIN
                  IF cast(@p1 as int) = 1
                     SET @t = @t + 'Jan'
                  IF cast(@p1 as int) = 2
                     SET @t = @t + 'Feb'
                  IF cast(@p1 as int) = 3
                     SET @t = @t + 'Mar'
                  IF cast(@p1 as int) = 4
                     SET @t = @t + 'Apr'
                  IF cast(@p1 as int) = 5
                     SET @t = @t + 'May'
                  IF cast(@p1 as int) = 6
                     SET @t = @t + 'Jun'
                  IF cast(@p1 as int) = 7
                     SET @t = @t + 'Jul'
                  IF cast(@p1 as int) = 8
                     SET @t = @t + 'Aug'
                  IF cast(@p1 as int) = 9
                     SET @t = @t + 'Sep'
                  IF cast(@p1 as int) = 10
                     SET @t = @t + 'Oct'
                  IF cast(@p1 as int) = 11
                     SET @t = @t + 'Nov'
                  IF cast(@p1 as int) = 12
                     SET @t = @t + 'Dec'
               END
            END

            SET @i2 = @i2 + 1
            SET @c  = @c  + 1
            SET @kk = substring(@k,@c,1)
         END
         SET @r = substring(@r,1,@i1-1) + @t +
                  substring(@r,@i2+1,len(@r)-@i2+1)
      END

      -- parsing a Time? (T1 or T2)
      ELSE
      IF substring(@r,@i1+2,1) = 'T'
      BEGIN
         IF substring(@r,@i1+3,1) = '1'
            SET @t = convert(CHAR(12),@Date1,114)
         ELSE
            SET @t = convert(CHAR(12),@Date2,114)

         SET @p1 = substring(@t,1,2)  -- hour
         SET @p2 = substring(@t,4,2)  -- minutes
         SET @p3 = substring(@t,7,2)  -- seconds
         SET @p4 = substring(@t,10,3) -- milliseconds
         SET @p  = 'T'

         IF substring(@r,@i1+4,1) not in ('H','M','S','&')
         BEGIN
            SET @s  = substring(@r,@i1+4,1)
            SET @i2 = @i1+5
            SET @i3 = 5
            SET @l  = @l - @i1+5
         END
         ELSE
         BEGIN
            SET @s  = ':'
            SET @i2 = @i1+4
            SET @i3 = 4
            SET @l  = @l - @i1+4
         END

         -- for each date part prepare resulting string in @k

         -- for each date part prepare resulting string in @k

         SET @k  = substring(@r,@i2,@l)
         SET @kk = substring(@k,1,1)
         SET @c  = 1
         SET @t  = ''

         WHILE @kk <> '&'
         BEGIN
            IF @t <> ''
               SET @t = @t + @s

            IF ascii(@kk) = 72  -- H 72
               SET @t = @t + @p1
            ELSE
            IF ascii(@kk) = 104 -- h 104
               SET @t = @t + cast(cast(@p1 as int) as varchar)
            ELSE
            IF ascii(@kk) = 77  -- M 77
               SET @t = @t + @p2
            ELSE
            IF ascii(@kk) = 109 -- m 109
               SET @t = @t + cast(cast(@p2 as int) as varchar)
            ELSE
            IF ascii(@kk) = 83  -- S 83
               SET @t = @t + @p3
            ELSE
            IF ascii(@kk) = 115 -- s 115
               SET @t = @t + cast(cast(@p3 as int) as varchar)

            SET @i2 = @i2 + 1
            SET @c  = @c  + 1
            SET @kk = substring(@k,@c,1)
         END
         SET @r = substring(@r,1,@i1-1) + @t +
                  substring(@r,@i2+1,len(@r)-@i2+1)
      END
      ELSE
         BREAK
   END

   RETURN @r
END  -- end of DateTimePatternParse
