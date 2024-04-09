<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="site-breadcrumb">
		<div class="container">
			<a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
			<span>Login</span>
		</div>
	</div>

    <div class="content-wrapper">
    <section class="content container-fluid">
    <div class="row">
            <div class="col-md-11">
                <div class="panel panel-info">
                    <div ></div>
                      <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Login Now</em></strong></div>
                    <div class="panel-body">

    <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">
						

                        <br />
                        <asp:Label runat="server" ID="msg" CssClass="auto-style25"></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7">Username : </asp:Label><asp:TextBox runat="server" ID="email_tb" BorderColor="Gray" BorderWidth="2" Height="41px" Width="234px" required="" ></asp:TextBox>
						<br />
						<br />
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7">Password : </asp:Label>&nbsp;<asp:TextBox runat="server" ID="password_tb" BorderColor="Gray" BorderWidth="2" TextMode="Password" Height="41px" Width="234px" required="" ></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button runat="server" ID="loginbtn" Text="Log In" OnClick="loginbtn_Click" CssClass="btn btn-danger circle arrow" Height="49px" Width="135px" />
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

