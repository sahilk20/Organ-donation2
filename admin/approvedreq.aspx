<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="approvedreq.aspx.cs" Inherits="admin_editnurse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

          .auto-style26 {
              color: #FF0000;
          }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><center><strong class="auto-style26" style="font-size:42px"> <em>Approved Requests</em></strong></center> </div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                                 <%
                            
                            if(GridView1.Rows.Count>0)
                            {  %>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="164px" Width="1006px">
                            <Columns>
                                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"></asp:BoundField>
                                <asp:BoundField DataField="rage" HeaderText="rage" SortExpression="rage"></asp:BoundField>
                                <asp:BoundField DataField="rorgan" HeaderText="rorgan" SortExpression="rorgan"></asp:BoundField>
                                <asp:BoundField DataField="uemail" HeaderText="uemail" SortExpression="uemail"></asp:BoundField>
                                <asp:BoundField DataField="demail" HeaderText="demail" SortExpression="demail"></asp:BoundField>
                                <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname"></asp:BoundField>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>

                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>

                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#FFF1D4"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#B95C30"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#F1E5CE"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#93451F"></SortedDescendingHeaderStyle>
                        </asp:GridView>




                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [requests] WHERE ([status] = @status)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="approved" Name="status" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

                             <% }
                              else
                              { %>
                        <h2>No approved requests</h2>
                                
                           <% }
                             %>
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

