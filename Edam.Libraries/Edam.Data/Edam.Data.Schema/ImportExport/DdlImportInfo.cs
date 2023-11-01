using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Office2010.Excel;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;

namespace Edam.Data.Schema.ImportExport
{

   public class DdlImportItemInfo
   {
      private const string CLASS_NAME = "DdlImportInfo";
      private const string NULL = "null";

      public string Dbms { get; set; }
      public string TableCatalog { get; set; }
      public string TableSchema { get; set; }
      public string ObjectName { get; set; }
      public string ColumnName { get; set; }
      public long? OrdinalPosition { get; set; }
      public string DataType { get; set; }
      public decimal? CharacterMaximumLength { get; set; }
      public string ConstraintType { get; set; }
      public string ConstraintTableSchema { get; set; }
      public string ConstraintTableName { get; set; }
      public string ConstraintColumnName { get; set; }

      public int? Precision { get; set; } = 0;
      public int? Scale { get; set; } = 0;
      public bool IsOutput { get; set; } = false;
      public bool IsReadOnly { get; set; } = false;
      public bool IsNullable { get; set; } = false;
      public bool IsIdentity { get; set; } = false;

      public string Tags { get; set; }
      public string ColumnDescription { get; set; }

      public string TableName
      {
         get { return ObjectName; }
         set { ObjectName = value; }
      }

      public ElementType ObjectType { get; set; } = ElementType.type;

      public NamespaceInfo SchemaNamespace { get; set; }
      public int OrdinalNo { get; set; }

      public bool IsPrimaryKey
      {
         get
         { 
            return ConstraintType != NULL && ConstraintType != null &&
               ConstraintType.ToUpper() == "PRIMARY KEY"; 
         }
      }

      public bool HasForeignKey
      {
         get
         {
            return ConstraintType != NULL && ConstraintType != null &&
               ConstraintType.ToUpper() == "FOREIGN KEY";
         }
      }

      public DdlImportItemInfo()
      {

      }

      public DdlImportItemInfo(List<string> values)
      {
         String func = "SetValues";
         if (values.Count > 19)
         {
            throw new ArgumentException(CLASS_NAME + "::" + func + 
               ": Expected no more than 13, 15 or 19 columns got (" +
               values.Count.ToString() + ")");
         }

         if (values.Count <= 15)
         {
            Dbms = GetString(values[0]);
            TableCatalog = GetString(values[1]);
            TableSchema = GetString(values[2]);
            TableName = GetString(values[3]);
            ColumnName = GetString(values[4]);
            OrdinalPosition = GetLong(values[5]);
            DataType = GetString(values[6]);
            CharacterMaximumLength = GetDecimal(values[7]);
            ConstraintType = GetString(values[8]);
            ConstraintTableSchema = GetString(values[9]);
            ConstraintTableName = GetString(values[10]);
            ConstraintColumnName = GetString(values[11]);

            IsIdentity = (values.Count > 12) ?
               GetBool(values[12]) : false;
            Tags = (values.Count > 13) ?
               GetString(values[13]) : String.Empty;
            ColumnDescription = (values.Count > 14) ?
               GetString(values[14]) : String.Empty;
         }
         else if (values.Count == 19)
         {
            Dbms = GetString(values[0]);
            TableCatalog = GetString(values[1]);
            TableSchema = GetString(values[2]);
            ObjectName = GetString(values[3]);
            ColumnName = GetString(values[4]);
            OrdinalPosition = GetLong(values[5]);
            DataType = GetString(values[6]);
            CharacterMaximumLength = GetDecimal(values[7]);

            Precision = GetInteger(values[8]);
            Scale = GetInteger(values[9]);

            IsOutput = GetBool(values[10]);
            IsReadOnly = GetBool(values[11]);
            IsNullable = GetBool(values[12]);
            IsIdentity = GetBool(values[13]);

            string otype = GetString(values[14]).ToUpper();
            switch (otype)
            {
               case "PROCEDURE":
                  ObjectType = ElementType.procedure;
                  break;
               case "FUNCTION":
                  ObjectType = ElementType.function;
                  break;
               case "VIEW":
                  ObjectType = ElementType.view;
                  break;
               case "TABLE":
               default:
                  ObjectType = ElementType.type;
                  break;
            }

            ConstraintType = GetString(values[15]);
            ConstraintTableSchema = GetString(values[16]);
            ConstraintTableName = GetString(values[17]);
            ConstraintColumnName = GetString(values[18]);

            if (ObjectType == ElementType.procedure ||
                ObjectType == ElementType.function)
            {
               ColumnName = ColumnName.Replace("@", "");
            }
         }
      }

      public static string GetString(string value)
      {
         if (value == null || value.ToLower() == NULL)
         {
            return null;
         }
         return value;
      }

      public static int? GetInteger(string value)
      {
         if (value == null || value.ToLower() == NULL)
         {
            return null;
         }
         if (int.TryParse(value, out int valueInt))
         {
            return valueInt;
         }
         return null;
      }

      public static long? GetLong(string value)
      {
         if (value == null || value.ToLower() == NULL)
         {
            return null;
         }
         if (long.TryParse(value, out long valueLong))
         {
            return valueLong;
         }
         return null;
      }

      public static bool GetBool(string value)
      {
         string val = value != NULL ? value.ToLower() : null;
         if (value == null || val == NULL)
         {
            return false;
         }
         return value == "1" || val == "true";
      }

      public static decimal? GetDecimal(string value)
      {
         if (value == null || value.ToLower() == NULL)
         {
            return null;
         }
         if (decimal.TryParse(value, out decimal valueLong))
         {
            return valueLong;
         }
         return null;
      }

   }

}
