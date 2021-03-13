<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="WebApplication2.adminusermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                   <div class="row">
                        <div class="col">
                            <center>
                                <h4>Member Details</h4>
                            </center>
                        </div>
                    </div>

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
                                <hr>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label>Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Full Name</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>

                        
                        <div class="col-md-4">
                            <label>Account Status</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Status" ReadOnly="true"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-warning" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-exclamation-triangle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-danger" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label>DOB</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="col-md-4">
                            <label>Contact Number</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                    
                        <div class="col-md-4">
                            <label>Email</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                    
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <label>Street</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Street"></asp:TextBox>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label>State</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="State"></asp:TextBox>
                        </div>

                        <div class="col-md-4">
                            <label>City</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                    
                        <div class="col-md-4">
                            <label>Zip Code</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Zip Code"></asp:TextBox>
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
                        <div class="col-12">
                            <asp:Button ID="Button3" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="Button3_Click" />
                        </div>
                    </div>
                </div>
            </div>

        <a href="homepage.aspx"><< Back to Home</a><br /><br />

        </div>

        <div class="col-md-6">
           <div class="card">
                <div class="card-body">
                    
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Member List</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                    <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name" />
                                    <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                    <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no" />
                                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                  </div>  
            </div>
    </div>
</div>
</div>



</asp:Content>
