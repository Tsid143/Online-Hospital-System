using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.IO;
public partial class addmedicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("AdminLogin.aspx");
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string pharmistid = TextBox3.Text.ToString();
        string medicinename = TextBox4.Text.ToString();
        string billingdetails = TextBox5.Text.ToString();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["hospital"].ConnectionString;

        {
            SqlCommand cmd = new SqlCommand("INSERT INTO pharmisttab(medicinename,billingdetails)VALUES(@medicinename,@billingdetails)", con);

            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            //cmd.Parameters.AddWithValue("@pharmistid", ParameterDirection.Output);
            cmd.Parameters.AddWithValue("@medicinename", medicinename);
            cmd.Parameters.AddWithValue("@billingdetails", billingdetails);


            con.Open();
            cmd.ExecuteNonQuery(); 

            con.Close();


            //TextBox3.Text = null;
            TextBox4.Text = null;
            TextBox5.Text = null;
            Label6.Text = "record entered successfully";
            Response.Redirect("addmedicine.aspx");
        }
    }
}
                
