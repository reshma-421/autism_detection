<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view activity.aspx.cs" Inherits="autism_detection.user.WebForm14" %>
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
							<li class="breadcrumb-item"><a href="staff-list.html">Dashboard </a></li>
							<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
							<li class="breadcrumb-item active"> Activity</li>
						</ul>
					</div>
				</div>
			</div>
		 <asp:Button ID="Button1" runat="server" Text="view" OnClick="Button1_Click" />
		 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

			<!-- /Page Header -->

		           
							<!-- Table Header -->
							<div class="page-table-header mb-2">
								<div class="row align-items-center">
									<div class="col">
										<div class="doctor-table-blk">
											<h3>Activity List</h3>
											<div class="doctor-search-blk">
												<div class="top-nav-search table-search-blk">
													<form>
														<input type="text" class="form-control" placeholder="Search here">
														<a class="btn"><img src="assets/img/icons/search-normal.svg" alt=""></a>
													</form>
												</div>
												<div class="add-group">
													<a href="add-staff.html" class="btn btn-primary add-pluss ms-2"><img src="assets/img/icons/plus.svg" alt=""></a>
													<a href="javascript:;" class="btn btn-primary doctor-refresh ms-2"><img src="assets/img/icons/re-fresh.svg" alt=""></a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-auto text-end float-end ms-auto download-grp">
										<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-01.svg" alt=""></a>
										<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-02.svg" alt=""></a>
										<a href="javascript:;" class=" me-2"><img src="assets/img/icons/pdf-icon-03.svg" alt=""></a>
										<a href="javascript:;" ><img src="assets/img/icons/pdf-icon-04.svg" alt=""></a>
										
									</div>
								</div>
							</div>
			
		 
		 
		
		
							
		 <div class="container">
    <div class="row">
        <asp:Repeater ID="rptautism" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                    <div class="dash-widget card h-100 shadow-sm border-0 p-3">
                        <div class="dash-boxs comman-flex-center text-center mb-2">
                            <img src="assets/img/icons/calendar.svg" alt="" class="img-fluid" width="50">
                        </div>
                        <div class="dash-content dash-count text-center">
                            <h5 class="fw-bold counter-up"><%# Eval("Activity name") %></h5>
                            <p class="text-muted"><%# Eval("Details") %></p>
                            <a href="<%# Eval("Hint") %>" class="card-link text-info" target="_blank">Watch on YouTube</a>
                            <div class="mt-2">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/<%# Eval("Hint") %>" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
		 </div>

				
</asp:Content>
