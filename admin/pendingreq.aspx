<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="pendingreq.aspx.cs" Inherits="admin_viewdoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

          .auto-style26 {
              color: #000000;
          }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"> <center><strong class="auto-style26" style="font-size:42px"> <em>Organ Requests</em></strong> </center>  </div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                        <br />
                        <br />

                        <%
                            
                            if(GridView1.Rows.Count>0)
                            {  %>

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="195px" Width="1000px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="Id" Text="Edit Request" DataNavigateUrlFormatString="editreq.aspx?r_id={0}" HeaderText="Action" />
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                <asp:BoundField DataField="uemail" HeaderText="user email" SortExpression="uemail"></asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state"></asp:BoundField>
                                <asp:BoundField DataField="rorgan" HeaderText="requested organ" SortExpression="rorgan"></asp:BoundField>

                                <asp:BoundField DataField="demail" HeaderText="donars email" SortExpression="demail"></asp:BoundField>
                                <asp:BoundField DataField="dname" HeaderText="donars name" SortExpression="dname"></asp:BoundField>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

                        
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [requests] WHERE ([status] = @status)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="pending" Name="status" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>



                           <% }
                              else
                              { %>
                        <h2>No pending requests</h2>
                                
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

