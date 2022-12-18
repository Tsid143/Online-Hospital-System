using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListViewAddDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //clearControls();
        if (e.CommandName == "edits")
        {
            //hidsaveType.Value = "Edit";
            // To get the Current Row Number
            GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = row.RowIndex;
            txtitemCode.Text = row.Cells[2].Text;
            txtitemName.Text = row.Cells[3].Text;
            txtPrice.Text = row.Cells[4].Text;
            txtTax.Text = row.Cells[5].Text;
            txtDiscount.Text = row.Cells[6].Text;
            txtdescription.Text = row.Cells[7].Text;
            tdADD.Visible = true;
            btnAdd.ImageUrl = "~/Images/btnEdit.jpg";
        }
        else if (e.CommandName == "deletes")
        {
            // To get the Current Row Number
            GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = row.RowIndex;
            //DeleteItem(row.Cells[2].Text);
        }
    }


}