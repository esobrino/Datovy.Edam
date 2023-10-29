using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NJsonSchema.CodeGeneration.CSharp;

namespace Edam.Test.Json
{

   [TestClass]
   public class TestJsonSchemaToCSharp
   {
      [TestMethod]
      public void JsonSchemaToCSharp()
      {
         string workingPath =
            "c:/users/esobr/Documents/Edam.Studio/Edam.App.Other/Projects/" +
            "MS.DataApiBuilder/Files/";
         string schemaPath = workingPath + "dab.to.csharp.jsd.json";
         string outPath = workingPath + "dab.csharp.cs";

         string jsonSchema = System.IO.File.ReadAllText(schemaPath);
         var tschema = NJsonSchema.JsonSchema.FromJsonAsync(jsonSchema);
         tschema.Wait();
         var schema = tschema.Result;
         var gen = new CSharpGenerator(schema);
         var fileText = gen.GenerateFile();
         File.WriteAllText(outPath, fileText);
      }
   }

}
