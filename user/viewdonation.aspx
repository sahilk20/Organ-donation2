<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="viewdonation.aspx.cs" Inherits="user_viewadmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>View Donations</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                        <br />
                        <br />

                        <%
                            if(GridView1.Rows.Count>0)
                            { %>
                        
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="215px" Width="830px">
                            <Columns>
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                               <asp:BoundField DataField="uemail" HeaderText="email" SortExpression="uemail"></asp:BoundField>
                                 <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="addr" HeaderText="address" SortExpression="addr"></asp:BoundField>
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                                <asp:BoundField DataField="rtype" HeaderText="donated organ" SortExpression="rtype"></asp:BoundField>
                                <asp:BoundField DataField="bloodgrp" HeaderText="bloodgrp" SortExpression="bloodgrp"></asp:BoundField>
                                <asp:BoundField DataField="dage" HeaderText="age" SortExpression="dage" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [donations] WHERE ([uemail] = @uemail)">
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

