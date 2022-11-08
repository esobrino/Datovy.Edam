SELECT S.name   [Schema], 
       O.name   [Table], 
       c.name   [Column], 
       ep.name  [PropertyName], 
       ep.value [Extended property]
  FROM sys.extended_properties EP
  JOIN sys.all_objects O 
    ON ep.major_id = O.object_id 
  JOIN sys.schemas S 
    ON O.schema_id = S.schema_id
  LEFT OUTER JOIN sys.columns AS c 
    ON ep.major_id = c.object_id 
   AND ep.minor_id = c.column_id
 WHERE s.name <> 'dbo'
