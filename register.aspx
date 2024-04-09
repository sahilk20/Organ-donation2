<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="donorregaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style7 {
            font-size: x-large;
            color:black;
        }

    .auto-style24 {
        color: ;
    }

          .auto-style25 {
              font-weight: 700;
              font-size: xx-large;
              color: #000000;
             
          }

          .auto-style26 {
              color: #FF0000;
          }
         .auto-style27 {
             color: #800000;
             text-align: center;
             font-size: 42px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="site-breadcrumb">
		<div class="container">
			<a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
			<span>Registration</span>
		</div>
	</div>


    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Registration</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">

                    
                        <asp:Label runat="server" ID="msg_lbl" CssClass="auto-style25"></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7">First Name : </asp:Label><br />
                        <asp:TextBox runat="server" ID="fname" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" required="" ></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Enter Valid Name" CssClass="auto-style26"></asp:RegularExpressionValidator>
                        <br />
						<br />
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7">Last Name : </asp:Label><br />
                        <asp:TextBox runat="server" ID="lname" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" required=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="lname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Enter Valid Name" CssClass="auto-style26"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style7">Mobile number :</asp:Label><br />
                        <asp:TextBox runat="server" ID="mob" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" required=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="mob" ErrorMessage="Enter Valid Number" ValidationExpression="^[0-9]{10}$" CssClass="auto-style24"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7">Address :</asp:Label><br />
                        <asp:TextBox runat="server" ID="addr" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" required=""></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style7">Email Id :</asp:Label><br />
                        <asp:TextBox runat="server" ID="email" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" required=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="email" ErrorMessage="not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style24"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style7">Password :</asp:Label><br />
                        <asp:TextBox runat="server" ID="pass" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" TextMode="Password" required=""></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7">Re-Enter Password :</asp:Label><br />
                        <asp:TextBox runat="server" ID="cpass" BorderColor="Gray" BorderWidth="2" Height="41px" Width="334px" TextMode="Password" required="" ></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" ErrorMessage="password not match" CssClass="auto-style24"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:Button runat="server" ID="signupbtn" Text="Sign Up" CssClass="btn btn-primary" OnClick="signupbtn_Click" Height="65px" Width="157px" />
					    <br />
					    <br />
					</div>

                    </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section></div>


</asp:Content>

