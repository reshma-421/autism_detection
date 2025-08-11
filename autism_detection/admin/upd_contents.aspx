<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="upd_contents.aspx.cs" Inherits="autism_detection.admin.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">

<!-- Page Header -->
<div class="page-header">
	<div class="row">
		<div class="col-sm-12">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="departments.html">contents </a></li>
				<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
				<li class="breadcrumb-item active">edit contents</li>
			</ul>
		</div>
	</div>
</div>
<!-- /Page Header -->
<div class="row d-flex justify-content-center">
	<div class="col-sm-8">
	
		<div class="card ">
			<div class="card-body text-center">
				<form>
					<div class="row">
						<div class="col-12">
							<div class="form-heading">
								<h4>edit contents</h4>
							</div>
						</div>
						
						<div class="col-12 ">  
								<div class="input-block local-forms">
												<label>Content Name  <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_n" runat="server" class="form-control" type="text"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_n" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
						</div>

						<div class="col-12 ">  
								<div class="input-block local-forms">
												<label>content  <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_con" runat="server" class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_con" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
						</div>




						<div class="col-12 col-sm-12">
							<div class="input-block local-forms">
								<label>Description  <span class="login-danger">*</span></label>
								<asp:TextBox ID="txt_desc" runat="server"  class="form-control" rows="3" cols="30" type="text"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_desc" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
						</div>
						
						<div class="col-12">
							<div class="doctor-submit text-center">
								
								<asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary submit-form me-2" OnClick="Button1_Click" />
								<asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary submit-form me-2" OnClick="Button2_Click"/>
											
							</div>
						</div>
							
						</div>
					</div>
			</div>
		</div>
	</div>
	 </div>
	
</asp:Content>
