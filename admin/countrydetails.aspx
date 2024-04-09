<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="countrydetails.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style271 {
            color: #FF0000;
        }
        .auto-style272 {
            font-weight: 700;
        }
        .auto-style273 {
            color: #FF0000;
        }
        .auto-style274 {
            color: #FF0000;
        }
        .auto-style275 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
   <center> <h3 class="auto-style1"><span class="auto-style2"><strong class="auto-style1"><em>Add Country / State / City</em></strong></span><strong> </strong></h3></center>

    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>


                 <div class="container">

                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>

				<div class="row">


                    <div class="col-md-4 col-sm-3 col-xs-6">
                      <table class="w-100">
                            <tr>
                                <td>
                                        Add Country : <asp:TextBox runat="server" ID="conutry" CssClass="form-control" Width="250px"></asp:TextBox> 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="conutry" CssClass="auto-style271" ValidationGroup="cntrygrp" ></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Button runat="server" ID="addcntry" Text="Add Country" CssClass="btn btn-primary" OnClick="addcntry_Click" ValidationGroup="cntrygrp"/> 
                                        
                                        &nbsp;<asp:Button runat="server" ID="showcountry" Text="Show Country" CssClass="btn btn-primary" OnClick="showcountry_Click"  />
                                </td>

                         
                            </tr>
                      
                             
                            
                        
                        </table>
                    </div>

                    <div class="col-md-4 col-sm-3 col-xs-6">
                      <table class="w-100">
                            <tr>
                                <td>
                                        Select Country : <asp:DropDownList runat="server" ID="drpcntry" CssClass="form-control" Width="250px" OnSelectedIndexChanged="drpcntry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                        Add State : <asp:TextBox runat="server" ID="addstatename" CssClass="form-control" Width="250px" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="addstatename" CssClass="auto-style273" ValidationGroup="stategrp"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Button runat="server" ID="addstatebtn" Text="Add State" CssClass="btn btn-primary" OnClick="addstatebtn_Click" ValidationGroup="stategrp" /> 
                                        
                                        &nbsp;<asp:Button runat="server" ID="showstatebtn" Text="Show State" CssClass="btn btn-primary" OnClick="showstatebtn_Click" />
                                </td>

                         
                            </tr>
                      
                             
                            
                        
                        </table>
                    </div>

                    <div class="col-md-4 col-sm-3 col-xs-6">
                    
                        <table class="w-100">
                            <tr>
                                <td>
                                        Select Country : <asp:DropDownList runat="server" ID="drpcntry2" CssClass="form-control" Width="250px" OnSelectedIndexChanged="drpcntry2_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                Select State : <asp:DropDownList runat="server" ID="drpstate" CssClass="form-control" Width="250px"></asp:DropDownList>
                                        Add City : <asp:TextBox runat="server" ID="addcityname" CssClass="form-control" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="addcityname" ValidationGroup="citygrp" CssClass="auto-style274"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Button runat="server" ID="addcitybtn" Text="Add City" CssClass="btn btn-primary" OnClick="addcitybtn_Click" ValidationGroup="citygrp" /> 
                                        
                                        &nbsp;<asp:Button runat="server" ID="showcitybtn" Text="Show City" CssClass="btn btn-primary" OnClick="showcitybtn_Click" />
                                </td>

                         
                            </tr>
                      
                             
                            
                        
                        </table>

                    </div>
                    <asp:Label runat="server" ID="msglbl" CssClass="auto-style272"></asp:Label>
  
                    </div>
                             
                         </ContentTemplate>
                         </asp:UpdatePanel>

                                       <br /><br />

 

                              <br /><br />
                     </div>
</asp:Content>

