<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="view_patient.aspx.cs" Inherits="autism_detection.admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="patients.html">Patients </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Patient List</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				
				<div class="row">
					<div class="col-sm-12">
					
						<div class="card card-table show-entire">
							<div class="card-body">
							
								<!-- Table Header -->
								<div class="page-table-header mb-2">
									<div class="row align-items-center">
										<div class="col">
											<div class="doctor-table-blk">
												<h3>Patient List</h3>
												<div class="doctor-search-blk">
													<div class="top-nav-search table-search-blk">
														<form>
<%--															<input type="text" class="form-control" placeholder="Search here">--%>
															<a class="btn"><img src="assets/img/icons/search-normal.svg" alt=""></a>
														</form>
													</div>
													<%--<div class="add-group">
														<a href="add-patient.html" class="btn btn-primary add-pluss ms-2"><img src="assets/img/icons/plus.svg" alt=""></a>
														<a href="javascript:;" class="btn btn-primary doctor-refresh ms-2"><img src="assets/img/icons/re-fresh.svg" alt=""></a>
													</div>--%>
												</div>
											</div>
										</div>
										<%--<div class="col-auto text-end float-end ms-auto download-grp">
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-01.svg" alt=""></a>
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-02.svg" alt=""></a>
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-03.svg" alt=""></a>
											<a href="javascript:;" ><img src="assets/img/icons/pdf-icon-04.svg" alt=""></a>
											
										</div>--%>
									</div>
								</div>



								<div class="table-responsive">
								<asp:Repeater ID="rptrautism" runat="server">
									<HeaderTemplate>
										<table class="table border-0 custom-table comman-table datatable mb-0">
											<tr>
							
												<th>Name</th>
												<th>Username</th>
												<th>Height</th>
												<th>Weight</th>
												<th>Age</th>
												<th>Gendder</th>
												<th>Contact</th>
												<th>Email</th>
											</tr>
					
									</HeaderTemplate>
									<ItemTemplate>
										<tr>
											<td><%# Eval("Name") %></td>
											<td><%# Eval("Username") %></td>
											<td><%# Eval("Height") %></td>
											<td><%# Eval("Weight") %></td>
											<td><%# Eval("Age") %></td>
											<td><%# Eval("Gender") %></td>
											<td><%# Eval("Contact") %></td>
											<td><%# Eval("Email") %></td>
										</tr>
					
									</ItemTemplate>
									<FooterTemplate>
										</table>
									</FooterTemplate>
						</asp:Repeater>


								</div>
								</div>
							</div>
						</div>
					</div></div>
	
</asp:Content>
