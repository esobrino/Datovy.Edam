using System;
using System.Collections.Generic;
using System.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetManagement;

namespace Edam.Data.AssetSchema
{

   /// <summary>
   /// Asset Use Case.
   /// </summary>
   public class AssetUseCase
   {

      public string Name { get; set; }
      public NamespaceList Namespaces { get; set; }
      public AssetDataElementList Items { get; set; }
      public AssetProcess Instructions { get; set; }
      public AssetComment Comments { get; set; }

      public AssetUseCase(NamespaceInfo ns, string versionId)
      {
         Namespaces = new NamespaceList();
         Items = new AssetDataElementList(ns, AssetType.UseCase, versionId);
         Instructions = new AssetProcess();
         Comments = new AssetComment();
      }

      /// <summary>
      /// Get inner DataElement list related to a Use Case as a list.
      /// </summary>
      /// <returns></returns>
      public List<AssetUseCaseElement> ToElementList(AssetColumnInfo columns)
      {
         List<AssetUseCaseElement> l = new List<AssetUseCaseElement>();
         var cols = columns == null ? new AssetColumnInfo() : columns;
         foreach (var i in Items)
         {
            if (i.ProcessInstructionsBag != null)
            {
               foreach (var p in i.ProcessInstructionsBag.Items)
               {
                  cols.Add(p.Column.Name);
               }
            }
            l.Add(new AssetUseCaseElement {
               Name = this.Name, ElementPath = i.ElementPath,
               SampleValue = i.SampleValue, UseCase = this, Parent = i });
         }
         return l;
      }

      /// <summary>
      /// Mrege Use Cases into a single list.
      /// </summary>
      /// <param name="cases">list of use cases</param>
      /// <returns>use cases list</returns>
      public static List<AssetUseCaseElement> MergeUseCases(
         List<AssetUseCase> cases, AssetColumnInfo columns)
      {
         List<AssetUseCaseElement> r = new List<AssetUseCaseElement>();
         foreach (var i in cases)
         {
            r.AddRange(i.ToElementList(columns));
         }
         return r;
      }

      public static void Reconcile(
         List<AssetItemUseCase<AssetDataElement>> assets, 
         List<AssetUseCase> useCases)
      {
         var types = assets.Where(s =>
               (s.Item.ElementType == ElementType.root ||
                s.Item.ElementType == ElementType.type))
            .Select(s => s.Item).ToList();
                
         //var properties = assets.Where(
         //   s => s.Item.EntityQualifiedName != null &&
         //      (s.Item.GroupType == AssetGroupItemType.attribute ||
         //       s.Item.GroupType == AssetGroupItemType.element))
         //   .Select(s => s.Item).ToList();
         var properties = assets.Where(
            s => 
               (s.Item.ElementType == ElementType.attribute ||
                s.Item.ElementType == ElementType.element))
            .Select(s => s.Item).ToList();

         var recon = new AssetUseCaseReconciliator(types, properties);
         recon.Reconcile(useCases);

      }

   }

}
