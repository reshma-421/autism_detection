<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="autism_detection.admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
		/* Glass-style card */
.glass-card {
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    border-radius: 1rem;
    transition: transform 0.2s ease, box-shadow 0.3s ease;
}

/* Hover shadow effect */
.glass-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

/* Table row hover effect */
.table-row-custom:hover {
    background-color: #f4f7ff;
    transition: background-color 0.3s ease;
}

/* Icon style */
.bi-person-circle {
    font-size: 1.1rem;
}

/* Table header style */
.table thead th {
    font-weight: 600;
    font-size: 0.75rem;
    letter-spacing: 0.03em;
    border-bottom: 1px solid #dee2e6;
}
.card.top-departments {
    background: #ffffff;
    border: 1px solid #e2e8f0;
    transition: box-shadow 0.3s ease-in-out;
}
.card.top-departments:hover {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}
.card-header.bg-gradient-primary {
    background: linear-gradient(45deg, #4e73df, #224abe);
    color: white;
}
.activity-top {
    transition: background-color 0.2s;
}
.activity-top:hover {
    background-color: #f9fafb;
}
.departments-list h5 {
    margin-bottom: 0;
}



	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Admin Dashboard</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /Page Header -->
				
				<div class="good-morning-blk">
					<div class="row">
						<div class="col-md-6">
							<div class="morning-user">
								<h2>Good Day</h2>
								<p>Have a nice day at work</p>
							</div>
						</div>
						<div class="col-md-6 position-blk">
							<div class="morning-img">
								<img src="assets/img/morning-img-01.png" alt="">
							</div>
						</div>
					</div>
				</div>
				

<div class="row bg-body-emphasis">
    <h4 class="mb-3 fw-bold">Hospitals</h4>
    <asp:Repeater ID="rptautism2" runat="server">
        <ItemTemplate>
            <div class="col-md-6 col-lg-4 col-xl-3 mb-4 d-flex">
                <div class="w-100"
                     style="background: linear-gradient(145deg, #f3f9ff, #ffffff);
                            border-radius: 16px;
                            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.06);
                            overflow: hidden;
                            transition: transform 0.3s ease-in-out;
                            min-height: 280px;
                            display: flex;
                            flex-direction: column;
                            justify-content: space-between;">
                    
                    <!-- Colored Top Bar -->
                    <div style="height: 6px; background: #4a90e2;"></div>

                    <!-- Hospital Image -->
                    <div style="display: flex; justify-content: center; align-items: center; padding: 20px; background: #eaf2fb;">
                        <img src='../hosp/<%# Eval("Image") %>' alt="Hospital Image"
                             style="width: 120px; height: 120px; object-fit: cover; border-radius: 50%; border: 4px solid #fff; box-shadow: 0 4px 10px rgba(0,0,0,0.1);" />
                    </div>

                    <!-- Text Content -->
                    <div style="padding: 20px; text-align: center;">
                        <h5 style="margin-bottom: 8px; font-weight: 600; color: #2c3e50;"><%# Eval("Name") %></h5>
                        <span style="display: inline-block; font-size: 14px; color: #4a90e2; font-weight: 500;"><%# Eval("Address") %></span>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
  
                    
               
				<div class="row">
<div class="col-12 col-md-12 col-lg-6 col-xl-12">
    <div class="card">
        <div class="card-body">
            <div class="chart-title mb-3">
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                    <h4 class="mb-0">Patient Visit by Gender</h4>
                    <ul class="nav chat-user-total gap-3">
                        <li class="d-flex align-items-center">
                            <i class="fa fa-circle current-users me-1" aria-hidden="true"></i>
                            <span class="me-1">Male</span>
                            <asp:Label ID="lblMale" runat="server" CssClass="fw-semibold" />
                        </li>
                        <li class="d-flex align-items-center">
                            <i class="fa fa-circle old-users me-1" aria-hidden="true"></i>
                            <span class="me-1">Female</span>
                            <asp:Label ID="lblFemale" runat="server" CssClass="fw-semibold" />
                        </li>
                    </ul>
                </div>
            </div>
            <div id="patient-chart"></div>
        </div>
    </div>
</div>
<%--					<div class="col-12 col-md-12 col-lg-6 col-xl-3 d-flex">
						<div class="card">
							<div class="card-body">
								<div class="chart-title">
									<h4>Patient by Department</h4>
								</div>	
								<div id="donut-chart-dash" class="chart-user-icon">
									<img src="assets/img/icons/user-icon.svg" alt="">
								</div>
							</div>
						</div>
					</div>--%>
				</div>


<div class="row">
    <h4 class="mb-3 fw-bold">Doctors</h4>
    <asp:Repeater ID="rptautism" runat="server">
        <ItemTemplate>
            <div class="col-md-6 col-lg-4 col-xl-3 mb-4 d-flex">
                <div class="w-100" 
                     style="background: linear-gradient(145deg, #f3f9ff, #ffffff);
                            border-radius: 16px;
                            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.06);
                            overflow: hidden;
                            transition: transform 0.3s ease-in-out;
                            min-height: 280px; 
                            display: flex; 
                            flex-direction: column; 
                            justify-content: space-between;">
                    
                    <!-- Colored Top Bar -->
                    <div style="height: 6px; background: #4a90e2;"></div>

                    <!-- Profile Image -->
                    <div style="display: flex; justify-content: center; align-items: center; padding: 20px; background: #eaf2fb;">
                        <img src='../doct/<%# Eval("Image") %>' alt="Doctor Image"
                             style="width: 120px; height: 120px; object-fit: cover; border-radius: 50%; border: 4px solid #fff; box-shadow: 0 4px 10px rgba(0,0,0,0.1);" />
                    </div>

                    <!-- Text Content -->
                    <div style="padding: 20px; text-align: center;">
                        <h5 style="margin-bottom: 8px; font-weight: 600; color: #2c3e50;"><%# Eval("Name") %></h5>
                        <span style="display: inline-block; font-size: 14px; color: #4a90e2; font-weight: 500;"><%# Eval("Category") %></span>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>



<div class="row g-4">
    <!-- Top Categories Card (Left Column) -->
    <div class="col-12 col-xl-4">
        <div class="card shadow rounded-4 h-100">
            <div class="card-header bg-primary bg-gradient text-white rounded-top">
                <h4 class="card-title mb-0 fw-bold">Top Categories</h4>
            </div>
            <div class="card-body">
                <asp:Repeater ID="rptTopCategories" runat="server">
                    <ItemTemplate>
                        <div class="d-flex align-items-center border-bottom py-3">
                            <div class="bg-light rounded-circle d-flex justify-content-center align-items-center me-3" style="width: 48px; height: 48px;">
                                <img src="assets/img/icons/dep-icon-01.svg" alt="" style="width: 26px;" />
                            </div>
                            <div>
                                <h6 class="mb-1 fw-semibold text-dark"><%# Eval("Category") %></h6>
                                <span class="text-muted small"><%# Eval("Percentage") %></span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <!-- Feedbacks Card (Right Column) -->
    <div class="col-12 col-xl-8">
        <div class="card shadow-lg rounded-4 h-100">
            <div class="card-header bg-primary bg-gradient text-white py-3 px-4 rounded-top d-flex justify-content-between align-items-center">
                <h4 class="mb-0 fw-bold">Feedbacks</h4>
                <%-- Optional action link:
                <a href="#" class="btn btn-light btn-sm fw-semibold shadow-sm">View All</a>
                --%>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:Repeater ID="rptautism3" runat="server">
                        <HeaderTemplate>
                            <table class="table table-hover align-middle mb-0">
                                <thead class="table-light text-uppercase small text-muted">
                                    <tr>
                                        <th class="ps-4">Username</th>
                                        <th>Feedback</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="ps-4">
                                    <i class="bi bi-person-circle text-primary me-2"></i>
                                    <%# Eval("Username") %>
                                </td>
                                <td><%# Eval("Feedback") %></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                                </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="row mt-5 mb-2">
  <div class="col-12">
    <div class="card shadow-sm rounded-4 border-0">
      <div class="card-header bg-white border-bottom-0 d-flex justify-content-between align-items-center">
        <h4 class="card-title mb-0">Recent Patients</h4>
<%--        <a href="view_login.aspx" class="btn btn-sm btn-outline-primary">Show all</a>--%>
      </div>
      <div class="card-body p-0">
        <div class="table-responsive">
          <asp:Repeater ID="rptrautism1" runat="server">
            <HeaderTemplate>
              <table class="table table-hover table-bordered align-middle mb-0">
                <thead class="table-light">
                  <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Height</th>
                    <th>Weight</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Contact</th>
                    <th>Email</th>
                  </tr>
                </thead>
                <tbody>
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
              </tbody>
              </table>
            </FooterTemplate>
          </asp:Repeater>
        </div>
      </div>
    </div>
  </div>
</div>
            </div>
</asp:Content>
