<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_activity.aspx.cs" Inherits="autism_detection.admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>

		
	</style>
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="departments.html">Activity </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Add Activity</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row d-flex justify-content-center">
					<div class="col-sm-10">
					
						<div class="card" >
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-12">
											<div class="form-heading">
												<h3 class="text-center fw-bold mb-4">Add Activity</h3>
											</div>
										</div>
										
										
										<div class=" col-md-12  ">  
											<div class="input-block ">
												<label>Activity Name </label>
												<asp:TextBox ID="txt_an" runat="server" class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_an" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="row">
										<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block ">
												<label>Descriptiion </label>
												<asp:TextBox ID="txt_des" runat="server" class="form-control" type="text" textmode="MultiLine"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter end time" ControlToValidate="txt_des" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
											
										<%--<div class="col-12 col-sm-12">
											<div class="input-block local-forms">
												<label>Hint  <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_actvt" runat="server"  class="form-control" rows="3" cols="30"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter activity" ControlToValidate="txt_actvt" ForeColor="red"></asp:RequiredFieldValidator>
											</div>
										</div>--%>
										<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block ">
												<label>	Hint </label>
												<asp:TextBox ID="txt_hnt" runat="server"  class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter hint" ControlToValidate="txt_hnt" ForeColor="Red"></asp:RequiredFieldValidator>

											</div>
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
												<asp:Button ID="Button1" runat="server" Text="submitt"  class="btn btn-primary submit-form me-2" OnClick="Button1_Click" />
												<asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary submit-form me-2" OnClick="Button2_Click" CausesValidation="false" />
												
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
