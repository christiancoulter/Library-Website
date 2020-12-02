<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="WebApplication2.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                   <div class="row">
                        <div class="col">
                            <center>
                                <h4>Book Issuing</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="images/books.png" />
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
                            <label>Member ID</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                    

                    <div class="col-md-6">
                            <label>Book ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                </div>
                            </div>
                        </div>
                        </div>

                    <div class="row">
                        

                        <div class="col-md-6">
                            <label>Member Name</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Name"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <label>Book Name</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name"></asp:TextBox>
                        </div>
                    

                    
                    </div>

                    <div class="row">
                        

                        <div class="col-md-6">
                            <label>Start Date</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <label>End Date</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
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
                        <div class="col-6">
                            <asp:Button ID="Button3" class="btn btn-lg btn-block btn-primary" runat="server" Text="Issue" />
                        </div>

                        <div class="col-6">
                            <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Return" />
                        </div>

                    
                    </div>


                </div>
            </div>

        <a href="homepage.aspx"><< Back to Home</a><br /><br />

        </div>

        <div class="col-md-7">
           <div class="card">
                <div class="card-body">
                    
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Issued Book List</h4>
                            </center>
                        </div>
                    </div>

                   

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>

                  </div>  
            </div>
    </div>
</div>
</div>

</asp:Content>
