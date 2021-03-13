<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication2.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="images/generaluser.png" />
                            </center>
                        </div>
                        </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Member Sign Up</h3>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <hr>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Full Name</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <label>Date of Birth</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Phone Number</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Phone Number"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <label>Email</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>Street</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Street"></asp:TextBox>
                        </div>                    
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem Value ="select">Select</asp:ListItem>
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                            <asp:ListItem Value="CA">California</asp:ListItem>
	                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                            <asp:ListItem Value="FL">Florida</asp:ListItem>
	                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                            <asp:ListItem Value="ME">Maine</asp:ListItem>
	                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                            <asp:ListItem Value="MT">Montana</asp:ListItem>
	                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                            <asp:ListItem Value="NY">New York</asp:ListItem>
	                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                            <asp:ListItem Value="TX">Texas</asp:ListItem>
	                            <asp:ListItem Value="UT">Utah</asp:ListItem>
	                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                            <asp:ListItem Value="WA">Washington</asp:ListItem>
	                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>City</label>
                            <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>

                        <div class="col-md-4">
                            <label>Zip Code</label>
                            <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Zip Code" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col">
                        <center>
                            <span class="badge badge-primary">Login Credentials</span>
                        </center>
                    </div>

                    
                    <div class="row">
                        <div class="col-md-6">
                            <label>Member ID</label>
                            <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <label>Password</label>
                            <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                     

                    <div class="form-group">
                            </br><asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>

        <a href="homepage.aspx"><< Back to Home</a><br /><br />

        </div>
    </div>

</asp:Content>
