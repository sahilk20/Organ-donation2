<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="donationform.aspx.cs" Inherits="user_admitform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <style type="text/css">

          .auto-style26 {
              color: #FF0000;
          }
         </style>

   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <%--datepicker--%>

    <script type="text/javascript" >
        $(function () {
            $("#<%=TextBox1.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd-mm-yy",
                yearRange: '1950:2018'
            });
        });
    </script>

    <%--datepicker--%>


    <div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading"><strong class="auto-style26" style="font-size:42px"> <em>Donation Form</em></strong></div>
                    <div class="panel-body">


                        <div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-2">

                       <center> <h3>Personal Details </h3></center>
                        <br />

                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="donor first name" Width="550" Height="45" required="" ></asp:TextBox>
                        <br /><br />                        

                        <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="donor last name" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br />  

                        <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="donor mobile number" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br />  

                         <asp:DropDownList runat="server" ID="srpcountry" CssClass="form-control"  Width="550" Height="45" required="" OnSelectedIndexChanged="srpcountry_SelectedIndexChanged" AutoPostBack="true">
                        
                        </asp:DropDownList> 
                        <br /><br />

                        <asp:DropDownList runat="server" ID="drpstate" CssClass="form-control"  Width="550" Height="45" required="" OnSelectedIndexChanged="drpstate_SelectedIndexChanged" AutoPostBack="true">
                           
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
                   
                  
                        <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control date"  placeholder="donor DOB" Width="550" Height="45" required="" TextMode="Date"></asp:TextBox>
                      
                       <br /><br />
                            
                         <center> <h3>Health History </h3></center> <br />


                         <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control" placeholder="donor height" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br /> 

                         <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control" placeholder="donor weight" Width="550" Height="45" required=""></asp:TextBox>
                        <br /><br /> 
                        
                         <asp:DropDownList runat="server" ID="bloodgrp" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--select blood group--</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                             <asp:ListItem>AB+</asp:ListItem>
                             <asp:ListItem>B-</asp:ListItem>
                        </asp:DropDownList>

                            <center> <h3>Dignosis </h3></center> <br />

                        <asp:DropDownList runat="server" ID="alcoholdrp" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--Use Of Alcohol--</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Sometimes</asp:ListItem>
                        </asp:DropDownList> 

                        <br /><br />


                        <asp:DropDownList runat="server" ID="tabacoodrp" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--Use Of tabacoo--</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Sometimes</asp:ListItem>
                        </asp:DropDownList> 

                        <br /><br />


                        <asp:DropDownList runat="server" ID="drugsdrp" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--Use Of Drugs--</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Sometimes</asp:ListItem>
                        </asp:DropDownList> 

                        <br /><br />



                        <center> <h3>Donation Details </h3></center> <br />

                        <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control" placeholder="donor age" Width="550" Height="45" required="" TextMode="Number"></asp:TextBox>
                        <br /><br />  

                         <asp:DropDownList runat="server" ID="roomtype" CssClass="form-control"  Width="550" Height="45" required="">
                            <asp:ListItem>--Select body part to donate--</asp:ListItem>
                            <asp:ListItem>Kidney</asp:ListItem>
                            <asp:ListItem>Liver</asp:ListItem>
                            <asp:ListItem>Heart</asp:ListItem>
                             <asp:ListItem>Intestine</asp:ListItem>
                             <asp:ListItem>Lung</asp:ListItem>
                             <asp:ListItem>Bone</asp:ListItem>
                             <asp:ListItem>Connective tissue</asp:ListItem>
                        </asp:DropDownList>

                        <br />
                        <br />


                        <asp:Button runat="server" ID="submit" Text="Sumbit Form" CssClass="btn btn-primary" Height="46px" Width="177px" OnClick="submit_Click" />
                      
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

