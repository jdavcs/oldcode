using System;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Core
{
    public class MySortGrid : MyBaseGrid
    {
        public int SortColumnIndex
        {
            get { return Convert.ToInt32(Attributes["SortColumnIndex"]); }
            set { Attributes["SortColumnIndex"] = value.ToString(); }
        }

        public string SortOrder
        {
            get { return Attributes["SortOrder"]; }
            set { Attributes["SortOrder"] = value; }
        }

        public string SortExpression
        {
            get { return getSortExpression(Convert.ToInt32(Attributes["SortColumnIndex"])); }
        }

        private string getSortExpression(int columnIndex)
        {
            if (Columns[columnIndex].SortExpression != "")
                return trimSortExpression(Columns[columnIndex].SortExpression) + Attributes["SortOrder"];
            else
                return getSortExpression(++columnIndex);
        }

        private string trimSortExpression(string sortExp)
        {
            if (sortExp.EndsWith(" asc"))
                return sortExp.Substring(0, sortExp.Length - 3);
            else if (sortExp.EndsWith(" desc"))
                return sortExp.Substring(0, sortExp.Length - 4);
            else
                return sortExp;
        }

        protected void changeSort(string sortExp)
        {
            //find new column index
            int newSortIndex = -1;
            for (int i = 0; i < Columns.Count; i++)
                if (Columns[i].SortExpression == sortExp)
                {
                    newSortIndex = i;
                    break;
                }

            int currSortIndex = Convert.ToInt32(Attributes["SortColumnIndex"]);

            if (newSortIndex == currSortIndex) //if same column -> switch order
            {
                if (Attributes["SortOrder"] == MySortOrder.ASCENDING)
                    Attributes["SortOrder"] = MySortOrder.DESCENDING;
                else
                    Attributes["SortOrder"] = MySortOrder.ASCENDING;
            }
            else //if new column -> set to ascending by default			
                Attributes["SortOrder"] = MySortOrder.ASCENDING;

            Attributes["SortColumnIndex"] = newSortIndex.ToString();
        }

        protected virtual void MyDataGrid_SortCommand(Object sender, DataGridSortCommandEventArgs e)
        {
            changeSort(e.SortExpression);
            bind();
        }

        private void MyGrid_ItemDataBound(Object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                int sortIndex = Convert.ToInt32(Attributes["SortColumnIndex"]);
                if (Attributes["SortOrder"] == MySortOrder.ASCENDING)
                    e.Item.Cells[sortIndex].Controls.Add(new LiteralControl("&nbsp;<img src='" + Prefix + IMAGE_ASC + "'>"));
                else
                    e.Item.Cells[sortIndex].Controls.Add(new LiteralControl("&nbsp;<img src='" + Prefix + IMAGE_DESC + "'>"));
            }
        }

        protected override void OnInit(EventArgs e)
        {
            this.SortCommand += new DataGridSortCommandEventHandler(MyDataGrid_SortCommand);
            this.ItemDataBound += new DataGridItemEventHandler(MyGrid_ItemDataBound);
            this.AllowSorting = true;
            this.HeaderStyle.ForeColor = Color.White;
            base.OnInit(e);
        }
    }
}
