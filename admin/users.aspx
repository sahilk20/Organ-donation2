<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="admin_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Registered Users</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">

                     
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="240px" Width="847px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                <asp:BoundField DataField="mobile " HeaderText="mobile " SortExpression="mobile "></asp:BoundField>
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                

                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <img src='<%#"../"+Eval("image") %>' id="imgmg" height="55" width="55" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
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

