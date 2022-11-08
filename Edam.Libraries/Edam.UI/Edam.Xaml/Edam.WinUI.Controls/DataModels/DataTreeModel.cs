using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.Data.Asset;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using Edam.WinUI.Controls.Common;
using DocumentFormat.OpenXml.Spreadsheet;
using Windows.UI.Text;
using Microsoft.UI.Text;

namespace Edam.WinUI.Controls.DataModels
{

   public class DataTreeModel : ObservableObject
   {

      private Visibility m_TextVisibility;
      public Visibility TextVisibility
      {
         get { return m_TextVisibility; }
         set
         {
            if (m_TextVisibility != value)
            {
               m_TextVisibility = value;
               OnPropertyChanged(nameof(TextVisibility));
            }
         }
      }

      private SolidColorBrush m_VisitedBrush;
      public SolidColorBrush VisitedBrush
      {
         get { return m_VisitedBrush; }
         set
         {
            if (value != m_VisitedBrush)
            {
               m_VisitedBrush = value;
               OnPropertyChanged(nameof(VisitedBrush));
            }
         }
      }

      public AssetDataTreeItem Item { get; set; }

      public string LinkText
      {
         get { return String.IsNullOrWhiteSpace(Item.LinkText) ?
               " " : "*"; }
         set
         {
            if (Item.LinkText != value)
            {
               Item.LinkText = value;
               OnPropertyChanged(nameof(LinkText));
               OnPropertyChanged(nameof(ElementFullPath));
            }
         }
      }

      public string ElementFullPath
      {
         get { return (String.IsNullOrWhiteSpace(Item.LinkText) ?
               String.Empty : Item.LinkText + " ") + Item.ElementFullPath; }
         set
         {
            //if (Item.ElementFullPath != value)
            //{
            //   OnPropertyChanged(nameof(ElementFullPath));
            //}
         }
      }

      private SolidColorBrush m_TextBrush;
      public SolidColorBrush TextBrush
      {
         get { return m_TextBrush; }
         set
         {
            if (value != m_TextBrush)
            {
               m_TextBrush = value;
               OnPropertyChanged(nameof(TextBrush));
            }
         }
      }

      private FontWeight m_TextWeight;
      public FontWeight TextWeight
      {
         get { return m_TextWeight; }
         set
         {
            if (m_TextWeight != value)
            {
               m_TextWeight = value;
               OnPropertyChanged(nameof(TextWeight));
            }
         }
      }

      private bool m_IsVisited;
      public bool IsVisited
      {
         get { return m_IsVisited; }
         set
         {
            if (IsVisited != value)
            {
               m_IsVisited = value;
               Item.IsVisited = value;
               OnPropertyChanged(nameof(IsVisited));
               SetVisitedColor(value);
            }
         }
      }

      private SolidColorBrush m_BlackColor =
         new SolidColorBrush(Microsoft.UI.Colors.Black);
      private SolidColorBrush m_LightGrayColor =
         new SolidColorBrush(Microsoft.UI.Colors.LightGray);

      public ObservableCollection<DataTreeModel> Children { get; set; } = 
         new ObservableCollection<DataTreeModel>();

      public DataTreeModel()
      {
         SetVisitedColor();
      }

      public void SetVisitedColor(bool visited = false)
      {
         VisitedBrush = visited ?
            m_BlackColor : m_LightGrayColor;
         TextWeight = visited ?
            FontWeights.Bold : FontWeights.Normal;
      }

      #region -- 4.00 - Prepare Data Tree Model

      private static DataTreeModel PrepareModel(DataTreeModel item)
      {
         int count = 0;
         foreach(var c in item.Item.Children)
         {
            string colorKey = String.Empty;
            if (c.OriginalElement.Kind == DataElementKind.AuditProperty)
            {
               // TODO: replace the hardcoded value
               colorKey = StringToBrushConverter.AuditBrush;
            }
            else if (
               (c.OriginalElement.Kind == DataElementKind.CodeSet ||
                c.Type == ItemType.Folder) &&
               (c.OriginalElement.ElementName.EndsWith("Code") ||
                c.OriginalElement.ElementName.EndsWith("Type") ||
                c.OriginalElement.ElementName.EndsWith("Category")))
            {
               colorKey = StringToBrushConverter.CodeSetBrush;
            }
            else if (
               (c.OriginalElement.Kind == DataElementKind.CodeSet ||
                c.Type == ItemType.Folder) &&
               (c.OriginalElement.ElementName.EndsWith("Association")))
            {
               colorKey = StringToBrushConverter.AssociationBrush;
            }
            //else if (c.Type == ItemType.Folder && count == 0)
            //{
            //   colorKey = StringToBrushConverter.RootBrush;
            //}
            else if (c.Type == ItemType.Folder)
            {
               colorKey = StringToBrushConverter.FolderBrush;
            }

            var m = new DataTreeModel
            {
               TextBrush = StringToBrushConverter.ToBrush(colorKey),
               Item = c,
               TextVisibility = Visibility.Visible
            };
            item.Children.Add(m);
            PrepareModel(m);
            count++;
         }
         return item;
      }

      public static DataTreeModel PrepareTree(AssetDataTree tree)
      {
         DataTreeModel r = new DataTreeModel
         {
            Item = tree.Root,
            TextVisibility = Visibility.Visible
         };
         return PrepareModel(r);
      }

      #endregion

   }

}
