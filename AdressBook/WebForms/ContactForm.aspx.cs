using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdressBook
{
    public partial class ContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["AdressBookConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("AdressformCredentials", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@FirstName", TextBox1.Text);
            command.Parameters.AddWithValue("@LastName", TextBox2.Text);
            command.Parameters.AddWithValue("@Adress", TextBox3.Text);
            command.Parameters.AddWithValue("@City", TextBox4.Text);
            command.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@Pincode", TextBox5.Text);
            command.Parameters.AddWithValue("@Phone", TextBox6.Text);
            command.Parameters.AddWithValue("@Email", TextBox7.Text);
            connection.Open();
            var datareader = command.ExecuteReader();
            if (datareader != null)
            {
                Session["data"] = datareader;
                Response.Redirect("HomePage.aspx");
                Label9.Text = "!!! Payform Details inserted succesfully into the database !!!";
                Label9.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label9.Text = "!!! Details are not inserted into the database !!!";
                Label9.ForeColor = System.Drawing.Color.Red;
            }
            connection.Close();


        }

    }
}
