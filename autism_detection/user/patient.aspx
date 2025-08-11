<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="patient.aspx.cs" Inherits="autism_detection.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container">

        <!-- Page Header with improved breadcrumb -->
        <div class="page-header mb-4">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-light p-3 rounded">
                    <li class="breadcrumb-item"><a href="patients.html" class="text-decoration-none">Patients</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add Patient Details</li>
                </ol>
            </nav>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0"><i class="fas fa-user-circle mr-2"></i>Patient Information</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">
                                <div class="col-12 mb-4">
                                    <h5 class="text-center font-weight-bold text-primary border-bottom pb-2">Personal Details</h5>
                                </div>

                             

                                <!-- User Name -->
                                <div class="col-md-12 mb-3">
                                    <div class="form-group">
                                        <label for="txt_un" class="font-weight-bold">User Name</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-light"><i class="fas fa-user"></i></span>
                                            </div>
                                            <asp:TextBox ID="txt_un" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                <!-- Height -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="txt_height" class="font-weight-bold">Height (cm)</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-light"><i class="fas fa-ruler-vertical"></i></span>
                                            </div>
                                            <asp:TextBox ID="txt_height" runat="server" CssClass="form-control" />
                                        </div>
                                         <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator1" 
                                            runat="server" 
                                            ErrorMessage="Enter your height" 
                                            ControlToValidate="txt_height" 
                                            ForeColor="Red" />
                                    </div>
                                </div>

                                <!-- Weight -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="txt_weight" class="font-weight-bold">Weight (kg)</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-light"><i class="fas fa-weight"></i></span>
                                            </div>
                                              <asp:TextBox ID="txt_weight" runat="server" class="form-control" />
                                        </div>
                                        <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator2" 
                                            runat="server" 
                                            ErrorMessage="Enter your weight" 
                                            ControlToValidate="txt_weight" 
                                            ForeColor="Red" />
                                    </div>
                                </div>
                            </div>
                                </div>
                            <!-- Form Actions -->
                            <div class="row mt-4">
                                <div class="col-12 text-center">
                                    <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary px-4" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="Cancel"   CssClass="btn btn-primary px-4" />                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
