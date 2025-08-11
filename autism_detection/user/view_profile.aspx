<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_profile.aspx.cs" Inherits="autism_detection.user.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="patients.html">Dashboard </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active"> Profile</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<div class="about-info">
											<h4>Patients Profile  <span><a href="javascript:;"><i class="feather-more-vertical"></i></a></span></h4>
										</div>
										<div class="doctor-profile-head">
											<div class="profile-bg-img">
												<img  src="assets/img/profile-bg.jpg"  alt="Profile">
											</div>
											<div class="row">
												<div class="col-lg-6 col-xl-4 col-md-4">
													<div class="profile-user-box">
														<div class="profile-user-img">
															<img  src="assets/img/profile-user-01.jpg"  alt="Profile">
															<%--<div class="input-block doctor-up-files profile-edit-icon mb-0">
																<div class="uplod d-flex">
																	<label class="file-upload profile-upbtn mb-0">
																		<img  src="assets/img/icons/camera-icon.svg"  alt="Profile"></i><input type="file">
																	</label>
																</div>
															</div>--%>
														</div>
														<div class="names-profiles">
															<div>
																<asp:Label ID="l_nm" runat="server" Text="" class="mt-2 fw-bold h2 "></asp:Label>
															</div>
															<div>
																<asp:Label ID="l_un" runat="server" Text="" class="mt-2"></asp:Label>
															</div>
															
														</div>
													</div>
												</div>
												
												
											</div>
										</div>
									</div>								
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4">
								<div class="doctor-personals-grp">
									<div class="card">
										<div class="card-body">
											<div class="heading-detail ">
												<h4 class="mb-3 fw-bold " style="color:navy;">About me</h4>
												
											</div>
											<div class="about-me-list">
												<ul class="list-space">
													<li>
														<h4>Gender</h4>
														<%--<asp:Label ID="l_gdr" runat="server" Text="" class="mt-2"></asp:Label>--%>
														<asp:TextBox ID="txt_gender" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
													</li>
													<li>
														<h4>Height</h4>

														<asp:TextBox ID="txt_height" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
														<%--<asp:Label ID="l_ht" runat="server" Text="" class="mt-2"></asp:Label>--%>
													</li>
													<li>
														<h4>Weight</h4>
														<asp:TextBox ID="txt_weight" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
														<%--<asp:Label ID="l_wt" runat="server" Text="" class="mt-2"></asp:Label>--%>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<%--<div class="doctor-personals-grp">
									<div class="card">
										<div class="card-body">
											<div class="heading-detail">
												<h4>Skills:</h4>
											</div>
											<div class="skill-blk">
												<div class="skill-statistics">
													<div class="skills-head">
														<h5>Heart Beat</h5>
														<p>45%</p>
													</div>
													<div class="progress mb-0"  >
														<div class="progress-bar bg-operations" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="skill-statistics">
													<div class="skills-head">
														<h5>Haemoglobin</h5>
														<p>85%</p>
													</div>
													<div class="progress mb-0"  >
														<div class="progress-bar bg-haemoglobin" role="progressbar" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="skill-statistics">
													<div class="skills-head">
														<h5>Blood Pressure </h5>
														<p>65%</p>
													</div>
													<div class="progress mb-0"  >
														<div class="progress-bar bg-statistics" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="skill-statistics">
													<div class="skills-head">
														<h5>Sugar </h5>
														<p>90%</p>
													</div>
													<div class="progress mb-0"  >
														<div class="progress-bar bg-visit" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>--%>
							</div>
							<div class="col-lg-8">
								<div class="doctor-personals-grp">
									<div class="card">
										<div class="card-body">
											<div class="tab-content-set">
												<ul class="nav">
													<li>
														<a href="patient-profile.html" class="active"><span class="set-about-icon me-2"><img src="assets/img/icons/menu-icon-02.svg" alt=""></span>About me</a>
													</li>
													<li class="ms-auto">
														<asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-primary submit-form text-right" OnClick="Button1_Click" />
													</li>
												</ul>
											</div>
											<div class="personal-list-out">
												<div class="row">
													<div class=" col-md-6">
														<div class="detail-personal">
															<div>
																<asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
															</div>
															
															<div class="mt-2">
																<%--<asp:Label ID="l_name" runat="server" Text="" class="mt-2"></asp:Label>--%>
																<asp:TextBox ID="txt_name" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="detail-personal">
															<div>
																<asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
															</div>
															<div class="mt-2">
																<%--<asp:Label ID="l_ph" runat="server" Text="" class="mt-2"> </asp:Label>--%>
																<asp:TextBox ID="txt_ph" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
															</div>
															
															
														</div>
													</div>
													<div class=" col-md-6">
														<div class="detail-personal mt-4">
															<div>
																<asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
															</div>
															<div class="mt-2">
																<%--<asp:Label ID="l_eml" runat="server" Text="" class="mt-2"></asp:Label>--%>
																<asp:TextBox ID="txt_email" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
															</div>
														</div>
													</div>

													<div class=" col-md-6">
														<div class="detail-personal mt-4">
															<div>
																<asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
															</div>
															<div class="mt-2">
																<%--<asp:Label ID="l_age" runat="server" Text=""></asp:Label>--%>
																<asp:TextBox ID="txt_age" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
															</div>
														</div>
													</div>
													
												</div>
											</div>
											
										</div>
									</div>
									<%--<div class="card">
										<div class="card-header">
											<h4 class="card-title ">Medical History</h4>
										</div>
										<div class="card-body p-0 table-dash">
											<div class="table-responsive">
												<table class="table mb-0 border-0 datatable custom-table patient-profile-table">
													<thead>
														<tr>
															<th>
																<div class="form-check check-tables">
																	<input class="form-check-input" type="checkbox" value="something">
																</div>
															</th>
															<th>Date</th>
															<th>Doctor</th>
															<th>Treatment</th>
															<th>Charges ($)</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<div class="form-check check-tables">
																	<input class="form-check-input" type="checkbox" value="something">
																</div>
															</td>
															<td >29/09/2022 </td>
															<td >Dr.Jenny Smith</td>
															<td>Check up</td>
															<td>$ 60</td>
															<td class="text-end">
																<div class="dropdown dropdown-action">
																	<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
																	<div class="dropdown-menu dropdown-menu-end">
																		<a class="dropdown-item" href="edit-appointment.html"><i class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
																		<a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#delete_appointment"><i class="fa fa-trash-alt m-r-5"></i> Delete</a>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div class="form-check check-tables">
																	<input class="form-check-input" type="checkbox" value="something">
																</div>
															</td>
															<td >19/09/2022 </td>
															<td >Andrea Lalema</td>
															<td>Blood Test	</td>
															<td>$ 50</td>
															<td class="text-end">
																<div class="dropdown dropdown-action">
																	<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
																	<div class="dropdown-menu dropdown-menu-end">
																		<a class="dropdown-item" href="edit-appointment.html"><i class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
																		<a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#delete_appointment"><i class="fa fa-trash-alt m-r-5"></i> Delete</a>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div class="form-check check-tables">
																	<input class="form-check-input" type="checkbox" value="something">
																</div>
															</td>
															<td >20/09/2022 </td>
															<td >Dr.William Stephin</td>
															<td>Blood Pressure</td>
															<td>$ 30</td>
															<td class="text-end">
																<div class="dropdown dropdown-action">
																	<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
																	<div class="dropdown-menu dropdown-menu-end">
																		<a class="dropdown-item" href="edit-appointment.html"><i class="fa-solid fa-pen-to-square m-r-5"></i> Edit</a>
																		<a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#delete_appointment"><i class="fa fa-trash-alt m-r-5"></i> Delete</a>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>--%>
								</div>
								
							</div>
						</div>
					</div>
				</div>
            </div>
           
</asp:Content>
