<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="site-breadcrumb">
		<div class="container">
			<a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-right"></i>
			<span>Contact</span>
		</div>
	</div>

    <div class="contact-form spad pb-0">

                  <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">


				<div class="section-title text-center">
					<h3>GET IN TOUCH</h3>
					<p>Contact us for best deals and offer</p>
				</div>
				<form class="comment-form --contact">
					<div class="row">
						<div class="col-lg-4">
							
                            <asp:TextBox runat="server" ID="name" CssClass="form-control" placeholder="Enter your name"></asp:TextBox> <br />
						</div>
						<div class="col-lg-4">
							<asp:TextBox runat="server" ID="email" CssClass="form-control" placeholder="Enter your email"></asp:TextBox> <br />
						</div>
						<div class="col-lg-4">
							<asp:TextBox runat="server" ID="subject" CssClass="form-control" placeholder="Enter subject"></asp:TextBox> <br />
						</div>
						<div class="col-lg-12">
							<asp:TextBox runat="server" ID="msg" placeholder="Enter Message" TextMode="MultiLine" Height="250" class="form-control"> </asp:TextBox><br /><br />
							<div class="text-center">
								<asp:Button runat="server" ID="b1" Text="Submit" CssClass="site-btn" />
							    <br />
                                <br />
							</div>
						</div>
					</div>
				</form>
                        </div>
                    </div>
                      </div>
        
			</div>
</asp:Content>

