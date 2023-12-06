using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7QUGC4H\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into TblLogin values(@Name,@Password,@City,@Gender,@Gmail)", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Password", TextBox2.Text);
                cmd.Parameters.AddWithValue("City", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("Gmail", TextBox4.Text);
                cmd.ExecuteNonQuery();
                
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.SelectedValue = "";
                RadioButtonList1.SelectedValue = "";
                TextBox4.Text = "";
                TextBox1.Focus();

            }

        }
    }
}