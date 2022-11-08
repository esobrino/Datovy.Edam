using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Collections.ObjectModel;

using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Controls;
using CommunityToolkit.WinUI.UI.Controls;

// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.Helpers;
using Edam.Helpers;
using Edam.DataObjects.Models;
using Edam.DataObjects.Dynamic;
using Edam.WinUI.Common;
using Windows.UI.WebUI;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ReferenceDataGridRowEventArgs : EventArgs
   {
      public dynamic AfectedRow { get; set; }
   }

   public delegate void ReferenceDataGridRowSelected(
      object sender, ReferenceDataGridRowEventArgs args);
   public delegate void ReferenceDataGridRowChanged(
      object sender, ReferenceDataGridRowEventArgs args);

   public class ReferenceDataGridViewModel : ObservableObject
   {

      #region -- 1.00 - Fields and Properties

      public const string DATA_ITEMS = "DataItems";

      public ReferenceDataGridRowSelected RowSelectedHandler { get; set; }
      public ReferenceDataGridRowSelected RowChangedHandler { get; set; }

      private DynamicTableInfo m_Table = new DynamicTableInfo();
      public DataGrid DataGridControl { get; set; }

      public dynamic SelectedRow
      {
         get { return m_Table.SelectedRow; }
         set
         {
            if (m_Table.SelectedRow != value)
            {
               m_Table.SelectedRow = value;
               OnPropertyChanged("SelectedRow");
               SetEditorControlsData(value);
            }
         }
      }

      protected ObservableCollection<dynamic> m_DataItems;
      public ObservableCollection<dynamic> DataItems
      {
         get { return m_DataItems; }
         set
         {
            if (m_DataItems != value)
            {
               m_DataItems = value;
               OnPropertyChanged(DATA_ITEMS);
            }
         }
      }

      #endregion
      #region -- 1.50 - Initialize Resources

      public ReferenceDataGridViewModel()
      {
         
      }

      #endregion
      #region -- 4.00 - Prepare / Setup Controls

      protected void SetEditorControlsData(
         dynamic row, List<ModelColumnInfo> columns)
      {
         ControlHelper.SetControlsData(row, m_Table.Columns);
      }

      /// <summary>
      /// Setup Editor Control based on given (dynamic) row usually be the same
      /// as the last "SelectedItem"...
      /// </summary>
      /// <param name="row"></param>
      protected void SetEditorControlsData(dynamic row)
      {
         if (!m_Table.HasModel)
         {
            return;
         }

         SetEditorControlsData(row, m_Table.Columns);

         m_Table.SelectedRow = row;

         if (RowSelectedHandler != null)
         {
            var args = new ReferenceDataGridRowEventArgs();
            args.AfectedRow = row;
            RowSelectedHandler(this, args);
         }
      }

      #endregion
      #region -- 4.00 - Setup Editor - Grid and Controls

      public void ClearAll()
      {
         // release resources & create a new datagrid...
         //DataGridControl.Columns.Dispose();
         DataGridControl.Columns.Clear();
      }

      public void Dispose()
      {
         if (DataGridControl != null)
         {
            ClearAll();
            DataGridControl = null;
         }
      }

      /// <summary>
      /// Prepare Data Grid based on provided ModelData.
      /// </summary>
      /// <param name="data">instance of ModelData</param>
      public void SetupDataGrid(ModelData data)
      {
         ClearAll();
         m_Table.Model = data;
         DataItems = data.Data;

         // prepare Data Grid...
         DataGridControl.SetBinding(DataGrid.ItemsSourceProperty,
            new Binding()
            {
               Path = new PropertyPath("DataItems"),
               Mode = BindingMode.TwoWay
            });

         // Community Grid prepare Header Column
         DataGridTextColumn gc;

         gc = new DataGridTextColumn
         {
            Header = String.Empty,
            Width = new DataGridLength(10.0)
         };

         gc.Binding = new Binding()
         {
            Path = new PropertyPath(RecordStatusControl.RECORD_STATUS_CODE),
            Mode = BindingMode.TwoWay
         };

         Style style = new Style(typeof(DataGridCell));
         style.Setters.Add(new Setter(Control.BackgroundProperty,
            new Binding()
            {
               Path = new PropertyPath("RecordStatusCode"),
               Converter = new RecordStatusToColorConverter()
            }));
         gc.CellStyle = style;

         DataGridControl.Columns.Add(gc);

         // prepare column headers
         foreach (var c in data.Columns)
         {
            if (!c.Visible || !c.IsGridable)
               continue;

            // Community Tookit DataGrid...
            gc = new DataGridTextColumn();
            gc.Header = c.Title;
            gc.Binding = new Binding()
            {
               Path = new PropertyPath(c.ColumnName),
               Mode = BindingMode.TwoWay
            };

            DataGridControl.Columns.Add(gc);
         }

         // what is the max row_number? calculate it...
      }

      #endregion
      #region -- 4.00 - Setup Controls Data

      #endregion

   }

}
