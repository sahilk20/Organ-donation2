<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
   <center> <h1 class="auto-style1"><strong>Dashboard</strong></h1></center>

    <br />
    <br />

                 <div class="container">
				<div class="row">
					<div class="col-md-12 col-md-push-2">

    <div class="row">

                 <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-book fa-5x"></i>


                            <h3><asp:Label runat="server" ID="Label1"></asp:Label> </h3>
                           Total Donations
                        </div>
                    </div>
  
                 <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-info back-widget-set text-center">
                            <i class="fa fa-list fa-5x"></i>


                            <h3><asp:Label runat="server" ID="Label2"></asp:Label> </h3>
                           Availabe organs
                        </div>
                    </div>
             
               <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-warning back-widget-set text-center">
                            <i class="fa fa-recycle fa-5x"></i>


                            <h3><asp:Label runat="server" ID="Label3"></asp:Label></h3>
                          Transplated Organs
                        </div>
                    </div>

               <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-danger back-widget-set text-center">
                            <i class="fa fa-users fa-5x"></i>

                            <h3><asp:Label runat="server" ID="Label4"></asp:Label></h3>
                           Total Requests
                        </div>
                    </div>

        </div>



 <div class="row">

     <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-secondary back-widget-set text-center">
                            <i class="fa fa-refresh fa-5x"></i>



                            <h3><asp:Label runat="server" ID="Label5"></asp:Label></h3>
                      Pending request
                        </div>
                    </div>

     <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-secondary back-widget-set text-center">
                            <i class="fa fa-check fa-5x"></i>



                            <h3><asp:Label runat="server" ID="Label6"></asp:Label></h3>
                      Approved request
                        </div>
                    </div>

 <div class="col-md-3 col-sm-3 col-xs-6">
                      <div class="alert alert-secondary back-widget-set text-center">
                            <i class="fa fa-user fa-5x"></i>



                            <h3><asp:Label runat="server" ID="Label7"></asp:Label></h3>
                      Registered Users
                        </div>
                    </div>
             

        </div> 

                        </div>
                    </div>
                     </div>

    <br />
    <br />

</asp:Content>

