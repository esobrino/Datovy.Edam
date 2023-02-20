/*
create view xproperties as
SELECT S.name   [Schema], 
       O.name   [Table], 
       isnull(c.name,'') [Column], 
       [PropertyName] = 
          case when ep.name = 'MS_Description' then 'Description'
               when ep.name = 'PRIVACY' then 'Privacy'
               when ep.name = 'X_Reference' then 'ExternalReference'
               else ep.name end, 
       ep.value [PropertyValue]
  FROM sys.extended_properties EP
  JOIN sys.all_objects O 
    ON ep.major_id = O.object_id 
  JOIN sys.schemas S 
    ON O.schema_id = S.schema_id
  LEFT OUTER JOIN sys.columns AS c 
    ON ep.major_id = c.object_id 
   AND ep.minor_id = c.column_id
 WHERE s.name <> 'dbo'
 */

select * from xproperties
 where [schema] = 'Surveillance'
   and [table] = 'travel_detail'
