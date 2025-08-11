<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_hospital.aspx.cs" Inherits="autism_detection.admin.WebForm7" %>
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
                        <li class="breadcrumb-item active">Add hospital</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /Page Header -->
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-heading">
                                    <h4 class="fw-bold text-center">Hospital Details</h4>
                                </div>
                            </div>
                            
                            <!-- Hospital Name -->
                            <div class="col-md-6">
                                <div class="input-block local-forms mb-3">
                                    <label>Hospital Name</label>
                                    <asp:TextBox ID="txt_name" runat="server" class="form-control" type="text"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_name" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <!-- Mobile -->
                            <div class="col-md-6">
                                <div class="input-block local-forms mb-3">
                                    <label>Mobile</label>
                                    <asp:TextBox ID="txt_ph" runat="server" class="form-control" type="number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_ph" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct number" ControlToValidate="txt_ph" ValidationExpression="^(0|\+91)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            
                            <!-- Address (full width) -->
                            <div class="col-12">
                                <div class="input-block local-forms mb-3">
                                    <label>Address</label>
                                    <asp:TextBox ID="txt_add" runat="server" class="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_add" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <!-- Image Upload (full width) -->
                            <div class="col-12">
                                <div class="input-block local-forms mb-4">
                                    <label>Image</label>
                                    <asp:FileUpload ID="himg" runat="server" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="himg" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <!-- Hidden field (full width but hidden) -->
                            <div class="col-12">
                                <div class="input-block local-forms">
                                    <asp:Label ID="Label1" runat="server" Text="di_id " Visible="false"></asp:Label>
                                    <asp:TextBox ID="txt_di_id" runat="server" class="form-control" type="number" Visible="false"></asp:TextBox>
                                </div>
                            </div>
                            
                            <!-- Buttons -->
                            <div class="col-12 mt-3">
                                <div class="doctor-submit text-center">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary submit-form " OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary submit-form" OnClick="Button2_Click1" CausesValidation="false"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
