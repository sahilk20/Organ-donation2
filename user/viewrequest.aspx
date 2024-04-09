<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="viewrequest.aspx.cs" Inherits="user_viewappoint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>View Requests</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                        <br />
                        <br />

                             <%
                            if(GridView1.Rows.Count>0)
                            { %>


                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="215px" Width="1019px" CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                <asp:BoundField DataField="uemail" HeaderText="uemail" SortExpression="uemail"></asp:BoundField>
                                <asp:BoundField DataField="bloodgrp" HeaderText="bloodgrp" SortExpression="bloodgrp"></asp:BoundField>
                                <asp:BoundField DataField="rage" HeaderText="rage" SortExpression="rage"></asp:BoundField>
                                <asp:BoundField DataField="rorgan" HeaderText="requested organ" SortExpression="rorgan"></asp:BoundField>

                                <asp:BoundField DataField="demail" HeaderText="donars email" SortExpression="demail"></asp:BoundField>
                                <asp:BoundField DataField="dname" HeaderText="donars name" SortExpression="dname"></asp:BoundField>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>



                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [requests] WHERE ([uemail] = @uemail)">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="user" Name="uemail" Type="String"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>


                                <% }
                            
                             %>

                        <%
                        else
                        { %>
                        <h2>No Data Found</h2>
                               
                           <% }
                             %>


                        <br />
                        <br />
                    </div>
                    <br />
                    <br />
                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
         </div>
</asp:Content>

