using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class adminusermanagement : System.Web.UI.Page
    {
        // hold connection string from web.config file
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        //Status buttons
        //status = active
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            updateMemberStatus("active");
        }

        //status = pending
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatus("pending");
        }

        //status = deactive
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatus("deactive");
        }

        //delete user button
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteMember();
        }

        void getMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    // create connection object (strcon)
                    SqlConnection con = new SqlConnection(strcon);

                    // open connection
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id = '" + TextBox7.Text.Trim() + "'", con);
                    // dr points to row if you get anything from the command above
                    SqlDataReader dr = cmd.ExecuteReader();
                    // check if dr has rows
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            //name
                            TextBox3.Text = dr.GetValue(0).ToString();
                            //status
                            TextBox11.Text = dr.GetValue(10).ToString();
                            //dob
                            TextBox1.Text = dr.GetValue(1).ToString();
                            //number
                            TextBox2.Text = dr.GetValue(2).ToString();
                            //email
                            TextBox4.Text = dr.GetValue(3).ToString();
                            //street
                            TextBox10.Text = dr.GetValue(6).ToString();
                            //state
                            TextBox5.Text = dr.GetValue(4).ToString();
                            //city
                            TextBox6.Text = dr.GetValue(5).ToString();
                            //zipcode
                            TextBox9.Text = dr.GetValue(7).ToString();
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Credentials');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Member ID Cannot Be Found');</script");

            }
        }
        // update a users account status
        void updateMemberStatus(string status)
        {
            if(checkIfMemberExists())
            {
                try
                {
                    // create connection object (strcon)
                    SqlConnection con = new SqlConnection(strcon);

                    // open connection
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status = '" + status + "' WHERE member_id = '" + TextBox7.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
           
        }
        
        void deleteMember()
        {
            if(checkIfMemberExists())
            {
                try
                {
                    // create connection object (strcon)
                    SqlConnection con = new SqlConnection(strcon);

                    // open connection
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from member_master_tbl WHERE member_id = '" + TextBox7.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    clearForm();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
           
        }

        void clearForm() 
        {
            //member id
            TextBox7.Text = "";
            //name
            TextBox3.Text = "";
            //status
            TextBox11.Text = "";
            //dob
            TextBox1.Text = "";
            //number
            TextBox2.Text = "";
            //email
            TextBox4.Text = "";
            //street
            TextBox10.Text = "";
            //state
            TextBox5.Text = "";
            //city
            TextBox6.Text = "";
            //zipcode
            TextBox9.Text = "";
        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id = '" + TextBox7.Text.Trim() + "';", con);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}