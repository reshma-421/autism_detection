<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="upd_activity.aspx.cs" Inherits="autism_detection.admin.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">

	<!-- Page Header -->
	<div class="page-header">
		<div class="row">
			<div class="col-sm-12">
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="departments.html">Activity </a></li>
					<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
					<li class="breadcrumb-item active">Edit Activity</li>
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
									<h4>Edit Activity</h4>
								</div>
							</div>
							<div class="col-12 ">  
								<div class="input-block local-forms">
									<label> Activity name <span class="login-danger">*</span></label>

									<asp:TextBox ID="txt_an" runat="server" class="form-control" type="text"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_an" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
							</div>
							<div class="col-12 col-md-6 col-xl-6">  
								<div class="input-block local-forms">
									<label>Description <span class="login-danger">*</span></label>
									<asp:TextBox ID="txt_des" runat="server" class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_des" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
							</div>
							<%--<div class="col-12 col-sm-12">
								<div class="input-block local-forms">
									<label>Activity  <span class="login-danger">*</span></label>
									<asp:TextBox ID="txt_actvt" runat="server"  class="form-control" rows="3" cols="30"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_actvt" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
							</div>--%>
							<div class="col-12 col-md-6 col-xl-6">  
								<div class="input-block local-forms">
									<label>	Hint <span class="login-danger">*</span></label>
									<asp:TextBox ID="txt_hnt" runat="server"  class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_hnt" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>
							</div>
							<%--<div class="col-12 col-md-6 col-xl-6">  
								<div class="input-block local-forms">
									<label>	di_id <span class="login-danger">*</span></label>
									<asp:TextBox ID="txt_di" runat="server"  class="form-control" type="text"></asp:TextBox>
									
								</div>
							</div>--%>

							<%--<div class="col-12 col-md-6 col-xl-6">
								<div class="input-block local-forms cal-icon">
									<label>Hint <span class="login-danger">*</span></label>
									<input class="form-control datetimepicker" type="text">
								</div>
							</div>--%>
							<%--<div class="col-12 col-md-6 col-xl-6">
								<div class="input-block select-gender">
									<label class="gen-label">Status <span class="login-danger">*</span></label>
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="radio" name="gender" class="form-check-input">Active
										</label>
									</div>
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="radio" name="gender" class="form-check-input">In Active
										</label>
									</div>
								</div>
							</div>--%>
							<div class="col-12">
								<div class="doctor-submit text-center">
									<asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-primary submit-form me-2" OnClick="Button3_Click" />
									<asp:Button ID="Button4" runat="server" Text="Cancel" class="btn btn-primary submit-form me-2" OnClick="Button4_Click"/>
									
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
