using System;
using System.Collections.Generic;
using System.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetManagement;
using Edam.Data.Assets.AssetUseCases;
using Edam.Data.AssetSchema;

namespace Edam.Data.AssetUseCases
{

   public class AssetUseCaseList : List<AssetUseCase>
   {

      public bool HasItems
      {
         get
         {
            return (this.Count > 0 && this[0].Items.Count > 0);
         }
      }

      public bool HasMapItems
      {
         get
         {
            return (this.Count > 0 && this[0].MappedItems.Count > 0);
         }
      }

      public AssetUseCaseList() : base()
      {

      }

   }

   /// <summary>
   /// Asset Use Case information.  For reporting purposes you will need to
   /// prepare the columns / headers list see AssetColumnsInfo.
   /// </summary>
   public class AssetUseCase
   {

      public string Name { get; set; }
      public NamespaceList Namespaces { get; set; }

      /// <summary>
      /// List of all Items to be used in the Use Case. This list should be
      /// given before calling ToElementList method.
      /// </summary>
      public AssetDataElementList Items { get; set; }

      public bool HasItems
      {
         get
         {
            return Items.Count > 0;
         }
      }

      /// <summary>
      /// A Report Map Item list identifying source and target elements...
      /// </summary>
      public List<AssetUseCaseReportItem> MappedItems { get; set; }

      public AssetProcess Instructions { get; set; }
      public AssetComment Comments { get; set; }

      public AssetUseCase(NamespaceInfo ns, string versionId)
      {
         Namespaces = new NamespaceList();
         Items = new AssetDataElementList(ns, AssetType.UseCase, versionId);
         Instructions = new AssetProcess();
         Comments = new AssetComment();
         MappedItems = new List<AssetUseCaseReportItem>();
      }

      /// <summary>
      /// Go through the Use Case Items (Asset Data Elements) and prepare a
      /// related AssetUseCaseElement per each.
      /// </summary>
      /// <param name="columns">(optional) columns list used here to get details
      /// of the data-asset-element item ProcessInstructionsBag, if any is
      /// available</param>
      /// <returns>list of AssetUseCaseElement(s) is returned</returns>
      public List<AssetUseCaseElement> ToUseCaseElementList(
         AssetColumnsInfo columns)
      {
         List<AssetUseCaseElement> l = new List<AssetUseCaseElement>();
         var cols = columns == null ? new AssetColumnsInfo() : columns;
         foreach (var i in Items)
         {
            if (i.ProcessInstructionsBag != null)
            {
               foreach (var p in i.ProcessInstructionsBag.Items)
               {
                  cols.Add(p.Column.Name);
               }
            }
            l.Add(new AssetUseCaseElement
            {
               Name = Name,
               ElementPath = i.ElementPath,
               SampleValue = i.SampleValue,
               UseCase = this,
               Element = i
            });
         }
         return l;
      }

      /// <summary>
      /// Mrege Use Cases into a single list.
      /// </summary>
      /// <param name="cases">list of use cases</param>
      /// <returns>use cases list</returns>
      public static List<AssetUseCaseElement> MergeUseCases(
         List<AssetUseCase> cases, AssetColumnsInfo columns)
      {
         List<AssetUseCaseElement> r = new List<AssetUseCaseElement>();
         foreach (var i in cases)
         {
            r.AddRange(i.ToUseCaseElementList(columns));
         }
         return r;
      }

      /// <summary>
      /// Gather all relevant types to then call the Reconcile procedure.
      /// </summary>
      /// <param name="asset">asset containing all relevant items to reconcile
      /// against</param>
      /// <param name="useCases">Use Case identifying Items to reconcile</param>
      public static void Reconcile(
         List<AssetDataElement> asset,
         List<AssetUseCase> useCases)
      {
         var types = asset.Where(s =>
               s.ElementType == ElementType.root ||
               s.ElementType == ElementType.type)
            .Select(s => s).ToList();

         //var properties = assets.Where(
         //   s => s.Item.EntityQualifiedName != null &&
         //      (s.Item.GroupType == AssetGroupItemType.attribute ||
         //       s.Item.GroupType == AssetGroupItemType.element))
         //   .Select(s => s.Item).ToList();
         var properties = asset.Where(
            s =>
               s.ElementType == ElementType.attribute ||
               s.ElementType == ElementType.element)
            .Select(s => s).ToList();

         var recon = new AssetUseCaseReconciliator(types, properties);
         recon.Reconcile(useCases);

      }

   }

}
