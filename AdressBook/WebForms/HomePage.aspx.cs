using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdressBook.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactForm.aspx");
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["AdressBookConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("delete from AdressDetails where Id='" + id + "'", connection);
            int t = command.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data is Deleted')</script>");
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }
    }
}