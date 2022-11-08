using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Globalization;
using System.Text.RegularExpressions;


// -----------------------------------------------------------------------------

namespace Edam.Text
{
   /// <summary>Provide support for general conversions from an object to a
   /// String type. The user of this class must understand that the conversion
   /// exceptions/errors are ignored by the class trying to always return a value.
   /// When an exception or error is found a defualt value is returned instead.
   /// </summary>
   public class Convert
   {
      /// <summary>
      /// Try to convert from an Object to a String
      /// </summary>
      /// <param name="value">object value to convert</param>
      /// <param name="defaultValue">default Value</param>
      /// <returns></returns>
      public static String ToString(Object value, String defaultValue = "")
      {
         if (value == null)
            return (defaultValue);

         String rVal = String.Empty;
         Type t = value.GetType();
         String errMess = String.Empty;

         try
         {
            if (t == typeof(Enum))
            {
               Enum eVal = (Enum)(value);
               rVal = (Enum.Format(eVal.GetType(), eVal, "G"));
            }
           
         }
         catch (Exception ex)
         {
            errMess = ex.Message;  // just ignore error
         }
         finally
         {
            if(String.IsNullOrEmpty(rVal))
            {
               rVal = defaultValue;
            }
         }

         return (rVal);
      }

      /// <summary>
      /// Convert a collection of strings into a single text.
      /// </summary>
      /// <param name="items">list of strings [default: ;;]</param>
      /// <param name="delimeter">delimeter</param>
      /// <returns>concatenated string separated by given delimiter</returns>
      public static String ToString(List<string> items, String delimeter = null)
      {
         if (items == null)
            return null;
         var del = delimeter ?? ";;";
         int count = 1;
         StringBuilder sb = new StringBuilder();
         foreach (var i in items)
         {
            sb.Append(i + (count < items.Count ? del : String.Empty));
            count++;
         }
         return sb.ToString();
      }

      /// <summary>
      /// Convert a string to Pascal Case...
      /// </summary>
      /// <param name="value">string value to convert</param>
      /// <returns>Pascal text string</returns>
      public static string ToPascalCase(string value)
      {
         // If there are 0 or 1 characters, just return the string.
         if (value == null)
            return value;
         if (value.Length < 2)
            return value.ToUpper();

         // Split the string into words.
         string[] words = value.Split(
             new char[] { }, StringSplitOptions.RemoveEmptyEntries);

         // Combine the words.
         string result = "";
         foreach (string word in words)
         {
            result +=
                word.Substring(0, 1).ToUpper() + word.Substring(1);
         }

         return result;
      }

      /// <summary>
      /// Convert string to Camel Case...
      /// </summary>
      /// <param name="value">string value to convert</param>
      /// <returns>Camel Case string is returned</returns>
      public static string ToCamelCase(string value)
      {
         // If there are 0 or 1 characters, just return the string.
         if (value == null || value.Length < 2)
            return value;

         // Split the string into words.
         string[] words = value.Split(
             new char[] { },
             StringSplitOptions.RemoveEmptyEntries);

         // Combine the words.
         string result = words[0].ToLower();
         for (int i = 1; i < words.Length; i++)
         {
            result +=
                words[i].Substring(0, 1).ToUpper() +
                words[i].Substring(1);
         }

         return result;
      }

      public static string ToWordProperCase(string word)
      {
         // Start with the first character.
         string result = word.Substring(0, 1).ToUpper();

         // Add the remaining characters.
         for (int i = 1; i < word.Length; i++)
         {
            if (char.IsUpper(word[i])) result += " ";
            result += word[i];
         }

         return result;
      }

      /// <summary>
      /// Convert a string to the proper case... by going through the given 
      /// value and when an upper cases char is found add a space to separate
      /// those into different words.
      /// </summary>
      /// <param name="value">string value to convert</param>
      /// <returns>Proper Case String is returned</returns>
      public static string ToProperCase(string value)
      {
         // If there are 0 or 1 characters, just return the string.
         if (value == null)
            return value;
         if (value.Length < 2)
            return value.ToUpper();

         // Remove all underscores
         value = value.Replace('_', ' ');

         // check words individually
         int count = 0;
         StringBuilder sb = new StringBuilder();
         string[] words = value.Split(' ');
         foreach(string word in words)
         {
            if (count > 0)
            {
               sb.Append(" ");
            }
            if (word.All(char.IsUpper))
            {
               sb.Append(word);
            }
            else
            {
               sb.Append(ToWordProperCase(word));
            }
            count++;
         }

         return sb.ToString();
      }

      public static string ToUnderscoreCase(string str)
      {
         return string.Concat(str.Select((x, i) =>
            i > 0 && char.IsUpper(x) ? "_" + x.ToString() :
               x.ToString())).ToLower();
      }

      /// <summary>
      /// Set upper case the firt char of each word in given text.
      /// </summary>
      /// <param name="text"></param>
      /// <returns></returns>
      public static string ToTitleCase(string text)
      {
         return Regex.Replace(text,
            "(?<!^)([A-Z][a-z]|(?<=[a-z])[A-Z])", " $1",
            RegexOptions.Compiled).Trim();
         //return string.Concat(str.Select((x, i) =>
         //   i > 0 && char.IsUpper(x) ? " " + x.ToString().ToUpper() :
         //      x.ToString()));
      }
   }

}
