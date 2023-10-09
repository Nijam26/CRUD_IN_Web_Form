using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_IN_Web_Form.ContentPages
{
    public partial class Page_02 : System.Web.UI.Page
    {
        SqlConnection Dbcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MyWebFormDB.mdf;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (chkBoxAgree.Checked)
            {
                Dbcon.Open();

                cmd = new SqlCommand("INSERT INTO Trainee(Name,Email,Gender,Dob) VALUES(@name,@email,@gender,@dob)", Dbcon);
                cmd.Parameters.AddWithValue("@name", txtBoxName.Text);
                cmd.Parameters.AddWithValue("@email", txtBoxEmail.Text);
                cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@dob", txtBoxDob.Text);
                cmd.ExecuteNonQuery();

                Dbcon.Close();
                txtBoxDob.Text = "";
                txtBoxEmail.Text = "";
                ddlGender.SelectedValue = ddlGender.SelectedValue;
                txtBoxName.Text = "";
            }
            else
            {
                lblMessage.Text = "Please Provide Required.....";
            }
        }
    }
}