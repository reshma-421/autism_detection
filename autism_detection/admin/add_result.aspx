<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_result.aspx.cs" Inherits="autism_detection.admin.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="departments.html">result </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Add result </li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row d-flex justify-content-center">
					<div class="col-sm-8">
					
						<div class="card">
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-12">
											<div class="form-heading text-center">
												<h4>Add Result</h4>
											</div>
										</div>

										<div class="col-12 ">
											<div class="input-block local-forms ">
												<label>user name  <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_pid" runat="server"  class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_pid" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>




										<div class="col-12 ">  
											<div class="input-block local-forms">
												<label>Ctegory <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_cat" runat="server"  class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txt_mrk" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>


										<div class="col-12 ">  
											<div class="input-block local-forms">
												<label>Mark <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_mrk" runat="server"  class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_mrk" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>


										<div class="col-12  ">  
											<div class="input-block local-forms">
												<label>Total Mark <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_tmark" runat="server"  class="form-control" type="number"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txt_mrk" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>

										<%--<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block local-forms">
											<label>Diagnosis <span class="login-danger">*</span></label>
											<asp:TextBox ID="txt_dia" runat="server"  class="form-control" type="text"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txt_mrk" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>--%>

										<%--<div class="col-12 col-md-6 col-xl-6">  
											<div class="input-block local-forms">
												<label>Date <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_dt" runat="server"  class="form-control" type="date"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_dt" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="col-12 col-md-6 col-xl-6">
											<div class="input-block local-forms">
												<label>Time  <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_tm" runat="server"  class="form-control" type="time"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_tm" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>--%>
										
										
										<div class="col-12">
											<div class="doctor-submit text-center">
												<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary submit-form me-2" OnClick="Button1_Click"/>
												
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
