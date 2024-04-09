<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="done.aspx.cs" Inherits="user_done" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #663300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Checkout</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


                        <br />
                        <br />

                        <span class="auto-style1"><strong><em>Your request is submitted.</em></strong></span>

                        <br />
                        <br />

                        <a href="viewrequest.aspx" class="btn btn-primary" >View requests</a>
                        <br />
                        <br />
                        <a href="../home.aspx" class="btn btn-primary">Logout</a>

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

