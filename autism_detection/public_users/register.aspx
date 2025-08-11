<%@ Page Title="" Language="C#" MasterPageFile="~/public_users/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="autism_detection.public_users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body>
	
		<!-- Main Wrapper -->
		<div class="main-wrapper login-body">
			<div class="container-fluid px-0">
				<div class="row">
				
					<!-- Login logo -->
					<div class="col-lg-6 login-wrap">
						<div class="login-sec">
							<div class="log-img">
								<img class="img-fluid" src="assets/img/reg2.png" alt="Logo">
							</div>
						</div>
					</div>
					<!-- /Login logo -->
					
					<!-- Login Content -->
					<div class="col-lg-6 login-wrap-bg">
						<div class="login-wrapper">
							<div class="loginbox">								
								<div class="login-right">
									<div class="login-right-wrap">
										<%--<div class="account-logo">
											<h2 class="text-primary-emphasis">Autism Detection</h2>
											<a href="index.html"><img src="assets/img/login-logo.png" alt=""></a>
										</div>--%>
										<h2>Getting Started</h2>
										<!-- Form -->
										<form action="login.html">
											<div class="input-block">
												<label>Full Name </label>
												<asp:TextBox ID="txt_name" runat="server" class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter your name" ForeColor="Red" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
												
											</div>

											
    <!-- Age Field -->
												
													<div class="input-block">
														<label>Age</label>
														<asp:TextBox ID="txt_age" runat="server" class="form-control" type="number"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your age" ControlToValidate="txt_age" ForeColor="Red"></asp:RequiredFieldValidator>
													</div>
												

												<!-- Contact Field -->
												
													<div class="input-block">
														<label>Contact</label>
														<asp:TextBox ID="txt_contact" runat="server" class="form-control" type="text"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valid phone number" ControlToValidate="txt_contact" ForeColor="Red"></asp:RequiredFieldValidator>
														<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct phone number" ControlToValidate="txt_contact" ValidationExpression="^(0|\+91)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
													</div>
											
										

											<div class="auto-style1 mt-0">
												<label >Gender </label>
												<asp:RadioButtonList ID="rdbt_g" runat="server" CssClass="mt-2" RepeatDirection="Horizontal">
														<asp:ListItem>Female&nbsp;</asp:ListItem>
														<asp:ListItem>Male&nbsp;</asp:ListItem>

													    <asp:ListItem>Others</asp:ListItem>

													</asp:RadioButtonList>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter gender" ControlToValidate="rdbt_g" ForeColor="Red"></asp:RequiredFieldValidator>
				
											</div>

											<div class="input-block mt-2 ">
												<label>Email </label>
												<asp:TextBox ID="txt_email" runat="server" class="form-control" type="email"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="enter valid email" ControlToValidate="txt_email" ForeColor="Red"></asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter correct format" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
											</div>
											<div class="input-block">
												<label>Password </label>
												<asp:TextBox ID="txt_pass" runat="server" class="form-control pass-input" type="password"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter correct password" ControlToValidate="txt_pass" ForeColor="Red"></asp:RequiredFieldValidator>
												<%--<span class="profile-views feather-eye-off toggle-password"></span>--%>
											</div>
											<div class="input-block">
												<label>Confirm Password </label>
												<asp:TextBox ID="txt_pass1" runat="server" class="form-control pass-input-confirm" type="password"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter correct password" ControlToValidate="txt_pass1" ForeColor="Red"></asp:RequiredFieldValidator><br />
												<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not match" ControlToCompare="txt_pass1" ControlToValidate="txt_pass"></asp:CompareValidator>

											<%--	<span class="profile-views feather-eye-off confirm-password"></span>--%>
											</div>
										

											
											<div class="forgotpass">
												<div class="remember-me">
													<label class="custom_check mr-2 mb-0 d-inline-flex remember-me"> I agree to the  <a class="text-danger" href="javascript:;">&nbsp terms of service </a>&nbsp and <a class="text-danger" href="javascript:;">&nbsp privacy policy </a>
														
													<input type="checkbox" name="radio">
													<span class="checkmark"></span>
													</label>
												</div>
											</div>
											<div class="input-block login-btn">
												<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger btn-block" OnClick="Button1_Click" />
											</div>
										</form>
										<!-- /Form -->
										  
										<div class="next-sign">
											<p class="account-subtitle">Already have account?  <a class="text-danger" href="login.aspx">Login</a></p>
											
											<!-- Social Login -->
											<div class="social-login">
												<a href="javascript:;"><img src="assets/img/icons/login-icon-01.svg" alt=""></a>
												<a href="javascript:;"><img src="assets/img/icons/login-icon-02.svg" alt=""></a>
												<a href="javascript:;"><img src="assets/img/icons/login-icon-03.svg" alt=""></a>
											</div>
											<!-- /Social Login -->
											
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					<!-- /Login Content -->
					
				</div>
			</div>
		</div>
		</body>
</asp:Content>
