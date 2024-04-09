<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="requestorgan.aspx.cs" Inherits="user_appointform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style273 {
            color: #800000;
        }
        .auto-style274 {
            font-size: x-large;
        }
        .auto-style275 {
            font-weight: 700;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>

    <section class="content container-fluid">

            <div class="content-wrapper">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="auto-style273">
                        <strong class="auto-style26" style="font-size:42px"> <em>Request Organ Form</em></strong></div>
                    </div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">

                       <center> <h3>Personal Details </h3></center>
                        <br />

                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder=" first name" Width="550" Height="45" required="" ></asp:TextBox>
                        <br /><br />                        

                        <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="last name" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br />  

                        <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="mobile number" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br />  

                         <asp:DropDownList runat="server" ID="srpcountry" CssClass="form-control"  Width="550" Height="45" required="" AutoPostBack="true" OnSelectedIndexChanged="srpcountry_SelectedIndexChanged">
                            
                        </asp:DropDownList> 
                        <br /><br />

                        <asp:DropDownList runat="server" ID="drpstate" CssClass="form-control"  Width="550" Height="45" required="" AutoPostBack="true" OnSelectedIndexChanged="drpstate_SelectedIndexChanged">
                            
                        </asp:DropDownList> 
                        <br /><br />


                        <asp:DropDownList runat="server" ID="drpcity" CssClass="form-control"  Width="550" Height="45" required="">
                            
                        </asp:DropDownList> 
                        <br /><br />

                        <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" placeholder="Enter Street" Width="550" Height="65" required="" TextMode="MultiLine"></asp:TextBox>
                        <br /><br />

                        <asp:DropDownList runat="server" ID="sex" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--select gender--</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList> 
                        <br /><br />
                   
                  
                        <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control date"  placeholder="DOB" Width="550" Height="45" required="" TextMode="Date"></asp:TextBox>
                      
                       <br /><br />
                            
                   

                        
                         <asp:DropDownList runat="server" ID="bloodgrp" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--select blood group--</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                             <asp:ListItem>AB+</asp:ListItem>
                             <asp:ListItem>B-</asp:ListItem>
                        </asp:DropDownList>

                       



                        <center> <h3>Request Details </h3></center> <br />

                        <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control" placeholder="age" Width="550" Height="45" required="" TextMode="Number"></asp:TextBox>
                        <br /><br /> 
                        
                        <strong><span class="auto-style274">Requested Organ : </span></strong>&nbsp; 
                        
                        <asp:Label runat="server" ID="orgnm" CssClass="auto-style275"></asp:Label> 

                         

                        <br />
                        <br />


                        <asp:Button runat="server" ID="submit" Text="Request Organ" CssClass="btn btn-primary" Height="46px" Width="177px" OnClick="submit_Click" />
                      
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

