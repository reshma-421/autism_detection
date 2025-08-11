<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="view_hospital.aspx.cs" Inherits="autism_detection.admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="doctors.html">Hospital </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Hospital List</li>
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
												<h3>Hospital List</h3>
												<div class="doctor-search-blk">
													<div class="top-nav-search table-search-blk">
														<form>
<%--															<input type="text" class="form-control" placeholder="Search here">--%>
															<a class="btn"><img src="assets/img/icons/search-normal.svg" alt=""></a>
														</form>
													</div>
													<div >
													   <asp:Button ID="Button1" runat="server" Text="Add Hospital"   CssClass="btn btn-primary ms-3" OnClick="Button1_Click"/>
														<%--<a href="add_hospital.aspx" class="btn btn-primary add-pluss ms-2"><img src="assets/img/icons/plus.svg" alt=""></a>
														<a href="javascript:;" class="btn btn-primary doctor-refresh ms-2"><img src="assets/img/icons/re-fresh.svg" alt=""></a>--%>
													</div>
												</div>
											</div>
										</div>
										<%--<div class="col-auto text-end float-end ms-auto download-grp">
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-01.svg" alt=""></a>
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-02.svg" alt=""></a>
											<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-03.svg" alt=""></a>
											<a href="javascript:;"><img src="assets/img/icons/pdf-icon-04.svg" alt=""></a>
											
										</div>--%>
									</div>
								</div>
								<!-- /Table Header -->
								
								<div class="table-responsive">
									<asp:GridView ID="GridView1" runat="server" class="table border-0 custom-table comman-table datatable mb-0" OnRowCommand="GridView1_RowCommand">
                                        <Columns>
                                            <asp:ButtonField CommandName="del" Text="Delete">
                                            <ControlStyle ForeColor="Red" />
                                            </asp:ButtonField>
                                            <asp:ButtonField CommandName="upd" Text="Update">
                                            <ControlStyle ForeColor="#0066FF" />
                                            </asp:ButtonField>
                                        </Columns>
                                    </asp:GridView>
									
										</div>
								</div>
							</div>
						</div>
					</div>
		</div>

</asp:Content>
