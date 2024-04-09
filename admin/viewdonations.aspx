<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewdonations.aspx.cs" Inherits="admin_viewappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style271 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><center> <strong class="auto-style26" style="font-size:42px"> <em class="auto-style271">Total Donations</em></strong></center>  </div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">




                        <br />
                        <br />

                             <%
                            
                            if(GridView1.Rows.Count>0)
                            {  %>


                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="239px" Width="939px">
                            <Columns>
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"></asp:BoundField>
                                <asp:BoundField DataField="addr" HeaderText="addr" SortExpression="addr"></asp:BoundField>
                                <asp:BoundField DataField="rtype" HeaderText="organ name" SortExpression="rtype"></asp:BoundField>
                                <asp:BoundField DataField="uemail" HeaderText="email" SortExpression="uemail"></asp:BoundField>
                                
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                            <RowStyle ForeColor="#000066" />

                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                        </asp:GridView>


                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [donations]">
                        </asp:SqlDataSource>

                             <% }
                              else
                              { %>
                        <h2>No donations</h2>
                                
                           <% }
                             %>
                        <br />
                        <br />
                    </div>
                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
         </div>
</asp:Content>

