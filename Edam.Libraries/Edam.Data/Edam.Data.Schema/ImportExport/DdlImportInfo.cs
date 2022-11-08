using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
      public string TableName { get; set; }
      public string ColumnName { get; set; }
      public long? OrdinalPosition { get; set; }
      public string DataType { get; set; }
      public decimal? CharacterMaximumLength { get; set; }
      public string ConstraintType { get; set; }
      public string ConstraintTableSchema { get; set; }
      public string ConstraintTableName { get; set; }
      public string ConstraintColumnName { get; set; }
      public bool IsIdentity { get; set; }
      public string Tags { get; set; }
      public string ColumnDescription { get; set; }

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
         if (values.Count > 15)
         {
            throw new ArgumentException(CLASS_NAME + "::" + func + 
               ": Expected no more than 13 columns got (" +
               values.Count.ToString() + ")");
         }

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

      public static string GetString(string value)
      {
         if (value == null || value.ToLower() == NULL)
         {
            return null;
         }
         return value;
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
