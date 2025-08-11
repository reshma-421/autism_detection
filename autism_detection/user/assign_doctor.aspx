<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="assign_doctor.aspx.cs" Inherits="autism_detection.user.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">

          <%--  <div class="row d-flex justify-content-center" >
                     <div>
                    <h2 class="mb-4">  Here is your diagnosis !  <asp:Label ID="l_un" runat="server" Text="" CssClass="fw-bold h-100 mt-5 text-primary h3"></asp:Label></h2>

                                         <asp:Label ID="l_dia" runat="server" Text="" CssClass="text-warning fw-bold mt-4 mb-4"></asp:Label>


                     </div>
            
            </div>
            <div class="mt-5">
                <h3><asp:Label ID="Label2" runat="server" Text="Here are some recomended docters for you" CssClass="mt-4"></asp:Label></h3>
            </div>--%>


        		<%--<div class="container mt-4">
                    <div class="row">
                        <asp:Repeater ID="rptautism" runat="server">
                            <ItemTemplate>
                                <div class="col-md-6 col-lg-4 col-xl-3 mb-4">
                                    <div class="card h-100 shadow-sm border-0 hover-shadow transition dash-widget">
                                        <div  class="text-center p-2" style="height: 150px; display: flex; align-items: center; justify-content: center;">
                                            <img src='../doct/<%# Eval("Image") %>'  class="img-fluid" style="max-height: 100%; max-width: 100%; object-fit: contain;"/>
                                        </div>
                                        <div class="dash-content dash-count text-center p-3">
                                             <div class="card-body text-center">
                                                 <h5 class="card-title"><%# Eval("Name") %></h5>
                                                 <p class="text-muted mb-1"><%# Eval("Specification") %></p>
                                                 <p class="text-muted small"><%# Eval("Hospital") %></p>
                                                 <h4 class="mb-1 text-muted"><%# Eval("Category") %></h4>
                                                <h4 class="mb-1 text-muted"><%# Eval("Email") %></h4>
                                                <h4 class="mb-0 text-muted"><%# Eval("Phone") %></h4>
     
   
                                             </div>
                        
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>--%>

                           <%-- <div class="container mt-4">
                    <div class="row">
                        <asp:Repeater ID="rptautism" runat="server">
                            <ItemTemplate>

                                 <div class="col-md-6 col-lg-4 col-xl-3 mb-4 d-flex">
							            <div class="card flex-fill bg-white">
								            <img alt="Card Image" src='../doct/<%# Eval("Image") %>' class="card-img-top" style="height:300px">
								            <div class="card-header">
									            <h5 class="card-title mb-0"><%# Eval("Name") %></h5>
								            </div>
								            <div class="card-body ">
									            <p class="card-text"><%# Eval("Specification") %></p>
                                                 <p class="card-text"><%# Eval("Hospital") %></p>
                                                <p  class="card-text"><%# Eval("Category") %></p>
                                                <p class="card-text"><%# Eval("Email") %></p>
                                                <p class="card-text"><%# Eval("Phone") %></p>
									           
								            </div>
							            </div>
						            </div>

                                    </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    </div>--%>

         <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
            <div class="card border-0 shadow-sm mb-5">
                <div class="card-body p-4 p-md-5">
                    <h2 class="display-5 fw-bold text-primary mb-4">Your Diagnosis Results</h2>
                    <div class="mb-4">
                        <asp:Label ID="l_un" runat="server" Text="" CssClass="h4 text-dark mb-3 d-block"></asp:Label>
                        <asp:Label ID="l_dia" runat="server" Text="" CssClass="h5 text-secondary"></asp:Label>
                    </div>
                    <div class="alert alert-info mt-4">
                        <i class="bi bi-info-circle-fill me-2"></i>Please consult with a specialist to confirm this diagnosis.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Recommended Doctors Section -->
    <div class="row justify-content-center mb-4">
        <div class="col-lg-10 text-center">
            <h3 class="h2 fw-bold text-success mb-4">
                <i class="bi bi-heart-pulse-fill me-2"></i>
                <asp:Label ID="Label2" runat="server" Text="Recommended Specialists"></asp:Label>
            </h3>
            <p class="lead text-muted">Based on your diagnosis, these specialists may be able to help you</p>
        </div>
    </div>

    <!-- Doctors Cards Section -->
    <div class="row g-4 justify-content-center">
        <asp:Repeater ID="rptautism" runat="server">
            <ItemTemplate>
                <div class="col-md-6 col-lg-4 col-xl-3 d-flex align-items-stretch">
                    <div class="card shadow-sm border-0 h-100">
                        <div class="card-img-top overflow-hidden" style="height: 250px;">
                            <img alt="Doctor Image" src='../doct/<%# Eval("Image") %>' class="img-fluid w-100 h-100 object-fit-cover">
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title fw-bold text-dark mb-3"><%# Eval("Name") %></h5>
                            <ul class="list-unstyled mb-4 flex-grow-1">
                                <li class="mb-2"><strong class="text-primary">Specialization:</strong> <%# Eval("Specification") %></li>
                                <li class="mb-2"><strong class="text-primary">Hospital:</strong> <%# Eval("Hospital") %></li>
                                <li class="mb-2"><strong class="text-primary">Category:</strong> <%# Eval("Category") %></li>
                                <li class="mb-2"><strong class="text-primary">Email:</strong> <a href="mailto:<%# Eval("Email") %>" class="text-decoration-none"><%# Eval("Email") %></a></li>
                                <li><strong class="text-primary">Phone:</strong> <a href="tel:<%# Eval("Phone") %>" class="text-decoration-none"><%# Eval("Phone") %></a></li>
                            </ul>
                            <a href="#" class="btn btn-outline-primary mt-auto align-self-start">View Profile</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>


        </div>

</asp:Content>
