<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_guidance.aspx.cs" Inherits="autism_detection.admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="departments.html">	Guidance </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Add Guidance</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row">
					<div class="col-md-8">
					
						<div class="card">
							<div class="card-body">

								<form>
									<div class="row">
										<div class="col-12">
											<div class="form-heading">
												<h4>Add Guidance</h4>
											</div>
										</div>
										<%--<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block local-forms">
												<label>Department Name <span class="login-danger">*</span></label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block local-forms">
												<label>Department Head <span class="login-danger">*</span></label>
												<input class="form-control" type="text">
											</div>
										</div>--%>
										<div class="row d-flex justify-content-center">
										<div class=" col-md-10 col-xl-10">
											<div class="input-block local-forms">
												<label>	Guidance <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_guid" runat="server"  class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
												
											</div>
										</div>
										</div>
										<div class="row d-flex justify-content-center">
										<div class=" col-md-10 col-xl-10">
											<div class="input-block local-forms">
												<label>	Registration id <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_rid" runat="server"  class="form-control" type="text"></asp:TextBox>
												
											</div>
										</div>
										</div>



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
												<asp:Button ID="Button1" runat="server" Text="Submitt" class="btn btn-primary submit-form me-2" OnClick="Button1_Click" />
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
