<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="WebApplication2.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                       <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />
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
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Publisher Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Publisher Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
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
                                <h4>Publisher List</h4>
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
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="publisher_id">
                                <Columns>
                                    <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                    <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                        </div>
                        
                    </div>

                  </div>  
            </div>
    </div>
    </div>
    </div>

</asp:Content>
