<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="add_feedback.aspx.cs" Inherits="autism_detection.user.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    	<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active"> Feedback</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
                <div class="row d-flex justify-content-center">
                    <div class="col-6">
                        <div class="card-box">
                            <h4 class="card-title text-center">Feedback</h4>
                            <form action="#">
                                <div class="input-block">
                                   
                                   
                                   
                                </div>
                                <div class="input-block">
                                    <label>User name</label>
                                    <asp:TextBox ID="txt_p" runat="server"  class="form-control"></asp:TextBox>
   
                                </div>
                                 <label>Feedback</label>
                                 <asp:TextBox ID="txt_fd" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_fd" ForeColor="Red"></asp:RequiredFieldValidator>

                                
                                <div class="text-end">
                                    <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-primary" OnClick="Button1_Click"/>
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>
    </div>
    
</asp:Content>
