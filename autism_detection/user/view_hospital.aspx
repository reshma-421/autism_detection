<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_hospital.aspx.cs" Inherits="autism_detection.user.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

		<div class="container">
    <div class="row">
        <asp:Repeater ID="rptautism" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                    <div class="card h-100 shadow-sm border-0 hover-shadow transition dash-widget" style="min-width: 250px;">
                       <%-- <div >

                            <img src="../hosp/<%# Eval("image") %>" class="img-fluid h-100 w-auto mx-auto" style="object-fit: cover;">   
                                                               
                        </div>--%>
                        <div class="text-center p-2" style="height: 150px; display: flex; align-items: center; justify-content: center;">
                            <img src="../hosp/<%# Eval("image") %>" class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;">   
                        </div>
                        <div class="dash-content dash-count text-center p-3">
                            <h2><span class="fw-bold mb-1"><%# Eval("Name") %></span></h2>
                            <h4 class="mb-1 text-muted"><%# Eval("Address") %></h4>
                            <h4 class="mb-1 text-muted"><%# Eval("Contact") %></h4>
                            <a href='view_doctor.aspx?hospital=<%# Eval("Name") %>' class="btn btn-primary btn-sm mt-2">View Doctors</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

		</div>

</asp:Content>
