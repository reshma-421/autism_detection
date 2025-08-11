<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="upd_guidance.aspx.cs" Inherits="autism_detection.admin.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
		
			<!-- Page Header -->
			<div class="page-header">
				<div class="row">
					<div class="col-sm-12">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="departments.html">Department </a></li>
							<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
							<li class="breadcrumb-item active">Add Department</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /Page Header -->
			<div class="row">
				<div class="col-sm-12">
				
					<div class="card">
						<div class="card-body">
							<form>
								<div class="row">
									<div class="col-12">
										<div class="form-heading">
											<h4>Add Department</h4>
										</div>
									</div>
									<div class="col-12 col-sm-12">
										<div class="input-block local-forms">
											<label>	Guidance <span class="login-danger">*</span></label>
											<asp:TextBox ID="txt_guid" runat="server"  class="form-control" type="text"></asp:TextBox>
								
										</div>
									</div>
									<div class="col-12 col-md-6 col-xl-6">
										<div class="input-block local-forms">
											<label>	r_id <span class="login-danger">*</span></label>
											<asp:TextBox ID="txt_rid" runat="server"  class="form-control" type="text"></asp:TextBox>
								
										</div>
									</div>
								<div class="col-12">
								<div class="doctor-submit text-center">
									<asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-primary submit-form me-2" OnClick="Button3_Click"/>
									<asp:Button ID="Button4" runat="server" Text="Cancel" class="btn btn-primary submit-form me-2"/>
									
									
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>							
		</div>					
	</div>
</div>

</asp:Content>
