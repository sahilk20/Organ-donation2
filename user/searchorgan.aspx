<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="searchorgan.aspx.cs" Inherits="user_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Search For Organ</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                        <br />
                        <br />

                 
															
											
											
											<div>
												<div class="tab-for">				
													<h5><span class="newStyle1">Select organ :</span></h5>
														<asp:DropDownList runat="server" ID="organname" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--Select body part to donate--</asp:ListItem>
                            <asp:ListItem>Kidney</asp:ListItem>
                            <asp:ListItem>Liver</asp:ListItem>
                            <asp:ListItem>Heart</asp:ListItem>
                             <asp:ListItem>Intestine</asp:ListItem>
                             <asp:ListItem>Lung</asp:ListItem>
                             <asp:ListItem>Bone</asp:ListItem>
                             <asp:ListItem>Connective tissue</asp:ListItem>
                        </asp:DropDownList>
													
                                                    
												</div>	
                                                <br />
												

                                                        <asp:Button runat="server" ID="order" Text="Search" CssClass="btn btn-primary"  Height="43px" Width="201px" OnClick="order_Click" />



                        <br />
                        <br />

                                                <asp:GridView runat="server" ID="gv1" Height="183px" Width="1081px" EmptyDataText="No Data Found" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >

                                                    <Columns>
                                                        
                                                        <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                                                        <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                                                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile"></asp:BoundField>
                                                        <asp:BoundField DataField="uemail" HeaderText="email" SortExpression="uemail"></asp:BoundField>
                                                        <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                                                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state"></asp:BoundField>
                                                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"></asp:BoundField>
                                                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                                                        <asp:BoundField DataField="rtype" HeaderText="organ" SortExpression="rtype"></asp:BoundField>
                                                        <asp:BoundField DataField="bloodgrp" HeaderText="bloodgrp" SortExpression="bloodgrp"></asp:BoundField>
                                                        <asp:BoundField DataField="dage" HeaderText="age" SortExpression="dage"></asp:BoundField>
                                                        
                                                        <asp:HyperLinkField DataNavigateUrlFields="Id" Text="Send Request" DataNavigateUrlFormatString="requestorgan.aspx?order_id={0}" HeaderText="Action" />
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



                                                
                                            </div>
                    <br />
                    <br />
                    </div>
                            </div>
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

