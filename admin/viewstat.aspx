<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewstat.aspx.cs" Inherits="admin_viewnurse" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
            text-align: center;
            font-size: x-large;
            margin-left: 40px;
        }
        .auto-style271 {
            font-weight: 700;
            color: #CC3300;
        }
        .auto-style274 {
            height: 26px;
            text-align: center;
            font-size: x-large;
            margin-left: 40px;
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
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">



    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 
    <br />

    &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="w-100" >
          
                <div  >

                <tr>
                    <td class="auto-style274" colspan="3" style="background-color:chocolate"><strong>Analysis Of Donated Organs By Country/State/city</strong></td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            
                <tr>
                    <td><strong>Select Country :</strong>
                        <asp:DropDownList ID="drpcntry" runat="server" OnSelectedIndexChanged="drpcntry_SelectedIndexChanged1" AutoPostBack="true" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                    <td><strong>Select State :</strong>
                        <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpstate_SelectedIndexChanged" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                    <td><strong>Select City :</strong>
                        <asp:DropDownList ID="drpcity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpcity_SelectedIndexChanged" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style2" ><asp:Label ID="msglbl" runat="server" CssClass="auto-style271"></asp:Label>
                        <br />
                        <asp:Chart ID="Chart1" runat="server" Height="309px" Width="413px" >
                            <Series>
                                <asp:Series Name="Series1" Legend="Legend1" ChartType="Pie" Font="Microsoft Sans Serif, 18pt, style=Bold" IsValueShownAsLabel="True" LabelFormat="#,##%">
                                    <SmartLabelStyle Enabled="False" />
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend HeaderSeparator="ThickGradientLine" Name="Legend1" Title="Donated Organs">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>

                        <br />

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No record Found" Width="420px" HorizontalAlign="Center">
                            <Columns>
                                <asp:BoundField DataField="rtype" HeaderText="Organ" />
                                <asp:BoundField DataField="noorgan" HeaderText="Number Of Donations" />
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
                    </td>
                </tr>

                    </div>
                    


                <tr>
                    <td colspan="3" >
                        &nbsp;</td>
                </tr>
                <tr>
                     <td class="auto-style274" colspan="3" style="background-color:#CC6600"><strong>Analysis Of Requested Organs By Country/State/city</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Select Country :</strong>
                        <asp:DropDownList ID="drpcntry2" runat="server" OnSelectedIndexChanged="drpcntry2_SelectedIndexChanged" AutoPostBack="true" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                    <td><strong>Select State :</strong>
                        <asp:DropDownList ID="drpstate2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpstate2_SelectedIndexChanged" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                    <td><strong>Select City :</strong>
                        <asp:DropDownList ID="drpcity2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpcity2_SelectedIndexChanged" Height="35px" Width="250px" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style2" ><asp:Label ID="msglbl2" runat="server" CssClass="auto-style271"></asp:Label>
                        <br />
                        <asp:Chart ID="Chart2" runat="server" Height="309px" Width="413px" Palette="Chocolate" >
                            <Series>
                                <asp:Series Name="Series" Legend="Legend1" ChartType="Pie" Font="Microsoft Sans Serif, 18pt, style=Bold" IsValueShownAsLabel="True" LabelFormat="#,##%">
                                    <SmartLabelStyle Enabled="False" />
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend HeaderSeparator="ThickGradientLine" Name="Legend1" Title="Requested Organs">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>

                        <br />

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" EmptyDataText="No record Found" Width="420px" HorizontalAlign="Center" CellSpacing="1" GridLines="None" >
                            <Columns>
                                <asp:BoundField DataField="rorgan" HeaderText="Organ" />
                                <asp:BoundField DataField="reqnoorg" HeaderText="Number Of Requests" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle ForeColor="Black" BackColor="#DEDFDE" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                </tr>

                
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style274" colspan="3" style="background-color:#CC6600"><strong>Analysis Of Organs Donated By Country</strong></td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td colspan="3"><strong>Select Organ :</strong>
                        <asp:DropDownList ID="drporgan" runat="server" CssClass="form-control" Height="35" Width="250" AutoPostBack="true" OnSelectedIndexChanged="drporgan_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>

                </tr>

            

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td colspan="3" class="auto-style2" ><asp:Label ID="msg_lbl3" runat="server" CssClass="auto-style271"></asp:Label>
                        
                        <br />
                        <asp:Chart ID="Chart3" runat="server" Width="392px" Palette="Chocolate">
                            <Series>
                                <asp:Series Name="Series1" IsValueShownAsLabel="True" Legend="Legend1" ChartType="StackedColumn"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>

                        <br />
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" EmptyDataText="No record Found" Width="420px" HorizontalAlign="Center" CellSpacing="2" ForeColor="Black" >
                            <Columns>
                                <asp:BoundField DataField="country" HeaderText="Country" />
                                <asp:BoundField DataField="ccount" HeaderText="Number Of organs" />
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
                    
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </ContentTemplate>
    </asp:UpdatePanel>

    <br />
    <br />


                        </div>
                    </div>
                            </div>
                        </div>
                    </div></div></div> </section> </div>

    
</asp:Content>

