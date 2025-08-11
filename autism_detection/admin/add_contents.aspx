<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_contents.aspx.cs" Inherits="autism_detection.admin.WebForm20" %>
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
					<li class="breadcrumb-item active">Add contents</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /Page Header -->
	<div class=" d-flex justify-content-center">
		<div class="col-sm-6">
		
			<div class="card">
				<div class="card-body">
					<form>
						<div class="row ">
							<div class="col-12">
								<div class="form-heading">
									<h4 class="text-center fw-bold">Add contents</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-12">  
										<div class="input-block ">
											<label>Content Name </label>
								
											<asp:TextBox ID="txt_n" runat="server" class="form-control" type="text" ></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter content" ControlToValidate="txt_n" ForeColor ="Red"></asp:RequiredFieldValidator>
										</div>
								</div>
							</div>
							<div class="row">
							<div class="col-12">  
								<div class="input-block ">
									<label>Content </label>
									
									<asp:TextBox ID="txt_con" runat="server" class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter content" ControlToValidate="txt_con" ForeColor ="Red"></asp:RequiredFieldValidator>
								</div>
							</div>
							</div>
							
							<div class="row">
							<div class="col-12 ">
								<div class="input-block ">
									<label>Desription </label>

									<asp:TextBox ID="txt_desc" runat="server" class="form-control" type="text"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter description" ControlToValidate="txt_desc" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
							
								</div>
							</div>

							<div class="col-12">
								<div class="doctor-submit text-center">
									
									<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary submit-form me-2" OnClick="Button1_Click"/>
									<asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary submit-form me-2" OnClick="Button2_Click" CausesValidation="false"/>
												
								</div>
							</div>
							</div>
						
				</div>
			</div>
		</div>
		 </div>
		 </div>
	
</asp:Content>
