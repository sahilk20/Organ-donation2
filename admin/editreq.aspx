<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="editreq.aspx.cs" Inherits="admin_edirdoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

          .auto-style26 {
              color: #FF0000;
          }
         .auto-style27 {
            font-size: x-large;
            font-weight: bold;
        }
         .auto-style28 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
            color: #FF6600;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Transplantation Request</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">
                    
                        
                            
                    
                        <table class="w-100" border="1">
                            <tr>
                                <td class="auto-style28" colspan="2">Requsters information</td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style27">First Name</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Last Name</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Mobile</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Address</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Country</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">State</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">City</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Gender</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label8" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Date Of Birth</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label9" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Blood Group</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label10" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Age</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label11" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">User Email</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label12" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                           
                            <tr>
                                <td class="auto-style28" colspan="2">Donars Information</td>
                            </tr>
                         
                            <tr>
                                <td class="auto-style27">Donars Id</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label13" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Name </td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label14" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Email</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label15" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">Country</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label16" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">State</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label17" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style27">City</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label18" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                 </td>
                            </tr>
                             <tr>
                                <td class="auto-style27">Mobile</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label19" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                 </td>
                            </tr>
                             <tr>
                                <td class="auto-style27">Donated Organ</td>
                                <td class="auto-style27">
                                    <asp:Label ID="Label20" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                 </td>
                            </tr>
                            
                             <tr>
                                <td class="auto-style28" colspan="2">Take Action</td>
                                
                            </tr>
                            
                            <tr>
                                <td class="auto-style27">Change Status</td>
                                <td>  
                                    <asp:Label ID="Label21" runat="server" CssClass="auto-style27" Text="Label"></asp:Label>
                                </td>
                            </tr>
                         
                           
                        </table>
                    
                  
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                  
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                  
                                    <asp:Button ID="Button1" runat="server" Text="Update Status" Width="138px" OnClick="submit_Click" CssClass="btn btn-primary" Height="41px" />
                         
                               
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                         
                               
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="cancel_Click" CssClass="btn btn-primary" Height="40px" Width="148px" />
                        
                            
                    
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

