using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(string.IsNullOrEmpty((string)Session["role"]))
                {
                    // nav bar buttons visibility for user
                    LinkButton1.Visible = true; // user login button
                    LinkButton2.Visible = true; // sign up button
                    LinkButton3.Visible = false; // logout button
                    LinkButton7.Visible = false; // hello user 
                    

                    // footer buttons visibility for user
                    LinkButton6.Visible = true; // admin login button
                    LinkButton11.Visible = false; // author management button
                    LinkButton12.Visible = false; // publisher management button
                    LinkButton8.Visible = false; // book inventory button
                    LinkButton9.Visible = false; // book issuing button
                    LinkButton10.Visible = false; // member management button
                }
                else if(Session["role"].Equals("user"))
                {
                    // nav bar buttons visibility for user
                    LinkButton1.Visible = false; // user login button
                    LinkButton2.Visible = false; // sign up button
                    LinkButton3.Visible = true; // logout button
                    LinkButton7.Visible = true; // hello user 
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    // footer buttons visibility for user
                    LinkButton6.Visible = true; // admin login button
                    LinkButton11.Visible = false; // author management button
                    LinkButton12.Visible = false; // publisher management button
                    LinkButton8.Visible = false; // book inventory button
                    LinkButton9.Visible = false; // book issuing button
                    LinkButton10.Visible = false; // member management button
                }
                else if(Session["role"].Equals("admin"))
                {
                    // nav bar buttons visibility for user
                    LinkButton1.Visible = false; // user login button
                    LinkButton2.Visible = false; // sign up button
                    LinkButton3.Visible = false; // logout button
                    LinkButton7.Visible = false; // hello user 
                    LinkButton7.Text = "Hello Admin";

                    // footer buttons visibility for user
                    LinkButton6.Visible = false; // admin login button
                    LinkButton11.Visible = true; // author management button
                    LinkButton12.Visible = true; // publisher management button
                    LinkButton8.Visible = true; // book inventory button
                    LinkButton9.Visible = true; // book issuing button
                    LinkButton10.Visible = true; // member management button
                }
            }
            catch(Exception ex)
            {

            }
            
        }


        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            // nav bar buttons visibility for user
            LinkButton1.Visible = true; // user login button
            LinkButton2.Visible = true; // sign up button
            LinkButton3.Visible = false; // logout button
            LinkButton7.Visible = false; // hello user 


            // footer buttons visibility for user
            LinkButton6.Visible = true; // admin login button
            LinkButton11.Visible = false; // author management button
            LinkButton12.Visible = false; // publisher management button
            LinkButton8.Visible = false; // book inventory button
            LinkButton9.Visible = false; // book issuing button
            LinkButton10.Visible = false; // member management button

            
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}