namespace Edam.Test.OpenXml.Word
{
   [TestClass]
   public class TestWordDocument
   {
      [TestMethod]
      public void TestMethod1()
      {
         Xml.OpenXml.WordDocument doc = null;
         try
         {
            doc = new Xml.OpenXml.WordDocument();
            doc.CreateDocument("c:/temp/wordtest.docx");
            var table = doc.PrepareTable();
            doc.AddParagraph("THIS IS A TITLE");

            List<List<string>> list = new List<List<string>>();

            List<string> list1 = new List<string>();
            list1.Add("COLUMN-A");
            list1.Add("COLUMN-B");
            list1.Add("COLUMN-C");
            list.Add(list1);

            List<string> list2 = new List<string>();
            list2.Add("Some Data");
            list2.Add("Yes more data");
            list2.Add("Continue with data");
            list.Add(list2);

            List<string> list3 = new List<string>();
            list3.Add("Some element");
            list3.Add("An element");
            list3.Add("Definitively an element");
            list.Add(list3);

            doc.AddTableData(table, list);
            doc.AddTable(table);

            doc.AddParagraph("some additional information");
            doc.Save();
         }
         catch (Exception ex)
         {
            Console.WriteLine(ex.Message);
         }
         finally
         {
            if (doc != null)
            {
               doc.Dispose();
            }
         }
      }
   }
}