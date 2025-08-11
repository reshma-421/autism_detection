<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_doctor.aspx.cs" Inherits="autism_detection.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
			
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="doctors.html">Doctors </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Add Doctor</li>
							</ul>
						</div>
					</div>
				</div>
				 <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-heading">
                                    <h4 class="text-center fw-bold mb-4">Doctor Details</h4>
                                </div>
                            </div>
                            
                            <!-- Name and Hidden ID -->
                            <div class="col-md-6 mb-3">
                                <div class="input-block local-forms">
                                    <label>Name</label>
                                    <asp:TextBox ID="txt_n" runat="server" class="form-control" type="text"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter name" ControlToValidate="txt_n" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="input-block local-forms">
                                    <asp:Label ID="Label1" runat="server" Text="g_id" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txt_g" runat="server" class="form-control" type="text" Visible="false"></asp:TextBox>
                                </div>
                            </div>
                            
                            <!-- Contact Info -->
                            <div class="col-md-6 mb-3">
                                <div class="input-block local-forms">
                                    <label>Mobile</label>
                                    <asp:TextBox ID="txt_ph" runat="server" class="form-control" type="number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter phone number" ControlToValidate="txt_ph" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct number" ControlToValidate="txt_ph" ValidationExpression="^(0|\+91)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <div class="input-block local-forms">
                                    <label>Email</label>
                                    <asp:TextBox ID="txt_em" runat="server" class="form-control" type="email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_em" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="txt_em" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            
                            <!-- Professional Info -->
                            <div class="col-md-4 mb-3">
                                <div class="input-block local-forms">
                                    <label>Category</label>
                                    <asp:TextBox ID="txt_cat" runat="server" class="form-control" type="text"  TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter category" ControlToValidate="txt_cat" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="input-block local-forms">
                                    <label>Specification</label>
                                    <asp:TextBox ID="txt_speci" runat="server" class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter specification" ControlToValidate="txt_speci" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="input-block local-forms">
                                    <label>Hospital</label>
                                    <asp:TextBox ID="txt_ho" runat="server" class="form-control" type="text" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter hospital" ControlToValidate="txt_ho" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <!-- Avatar Upload -->
                            <div class="col-12 mb-4">
                                <div class="input-block local-forms">
                                    <label>Avatar <span class="text-danger">*</span></label>
                                    <div class="settings-btn upload-files-avator">
                                        <asp:FileUpload ID="file_up" runat="server" class="form-control" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please upload an image" ControlToValidate="file_up" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>


								     
								       
									
										<div class="col-12">
											<div class="doctor-submit text-center">
                                                <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-primary " OnClick="Button1_Click"/>
												<asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary" OnClick="Button2_Click" CausesValidation="false" />
											</div>
										</div>
									</div>
								
							</div>
						</div>							
					</div>					
				


</asp:Content>
