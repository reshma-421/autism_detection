<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_content.aspx.cs" Inherits="autism_detection.user.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .text-justify {
            text-align: justify !important;
            text-justify: inter-word !important;
            line-height: 1.6;
            word-wrap: break-word;
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
				<li class="breadcrumb-item"><a href="staff-list.html">Dashboard </a></li>
				<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
				<li class="breadcrumb-item active"> Content</li>
			</ul>
		</div>
	</div>
</div>

<!-- /Page Header -->

          
		 		 <div class="container mt-3">
    <div class="row">
        <asp:Repeater ID="rptautism" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                    <div class="dash-widget card h-100 shadow-sm border-0 p-3">
                       
                        <div class="dash-content dash-count text-center">
                            <h5 class="fw-bold counter-up"><%# Eval("Content Name") %></h5>
                            <p class="text-muted text-justify" style="display: flex; justify-content: center;"> <%# Eval("Content") %> </p>


                            
                            <div class="mt-2">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/<%# Eval("Description") %>" frameborder="0" allowfullscreen></iframe>
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
