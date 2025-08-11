<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_doctor.aspx.cs" Inherits="autism_detection.user.WebForm22" %>
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
					<li class="breadcrumb-item active"> Doctor</li>
				</ul>
			</div>
		</div>
	</div>

       
			
			<div class="container">
    <div class="row">
        <asp:Repeater ID="rptautism" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                    <div class="card h-100 shadow-sm border-0 hover-shadow transition dash-widget">
                        <div  class="text-center p-2" style="height: 150px; display: flex; align-items: center; justify-content: center;">
                            <img src='../doct/<%# Eval("Image") %>'  class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;"/>
                        </div>
                        <div class="dash-content dash-count text-center p-3">
                            <h5 class="fw-bold counter-up"><%# Eval("Name") %></h5>
                            <h4 class="mb-1 text-muted"><%# Eval("Specification") %></h4>
                            <h4 class="mb-1 text-muted"><%# Eval("Category") %></h4>
                            <h4 class="mb-1 text-muted"><%# Eval("Email") %></h4>
                            <h4 class="mb-0 text-muted"><%# Eval("Phone") %></h4>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
</asp:Content>
