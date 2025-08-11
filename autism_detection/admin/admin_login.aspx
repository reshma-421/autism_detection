<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="autism_detection.admin.WebForm4" %>
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
								<img class="img-fluid" src="assets/img/login-02.png" alt="Logo">
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
										<div class="account-logo">
											<a href="index.html"><img src="assets/img/login-logo.png" alt=""></a>
										</div>
										<h2>Login</h2>
										<!-- Form -->
										<form action="index.html">
											<div class="input-block">
												<label >Email <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_email" runat="server" class="form-control" ></asp:TextBox>

												
											</div>
											<div class="input-block">
												<label >Password <span class="login-danger">*</span></label>
												<asp:TextBox ID="txt_pass" runat="server" class="form-control"></asp:TextBox>
											
												<span class="profile-views feather-eye-off toggle-password"></span>
											</div>
											<div class="forgotpass">
												<div class="remember-me">
													<label class="custom_check mr-2 mb-0 d-inline-flex remember-me"> Remember me
													<input type="checkbox" name="radio">
													<span class="checkmark"></span>
													</label>
												</div>
												<a href="forgot-password.html">Forgot Password?</a>
											</div>
											<div class="input-block login-btn">
												<asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="LOGIN" OnClick="Button1_Click" />
											</div>
										</form>
										<!-- /Form -->
										  
										<div class="next-sign">
											<p class="account-subtitle">Need an account?  <a href="register.html">Sign Up</a></p>
											
											<!-- Social Login -->
											<div class="social-login">
												<a href="javascript:;" ><img src="assets/img/icons/login-icon-01.svg" alt=""></a>
												<a href="javascript:;" ><img src="assets/img/icons/login-icon-02.svg" alt=""></a>
												<a href="javascript:;" ><img src="assets/img/icons/login-icon-03.svg" alt=""></a>
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
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
		<script src="assets/js/jquery-3.7.1.min.js" type="770614da765b70ddde3db9e1-text/javascript"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="assets/js/bootstrap.bundle.min.js" type="770614da765b70ddde3db9e1-text/javascript"></script>
		
		<!-- Feather Js -->
		<script src="assets/js/feather.min.js" type="770614da765b70ddde3db9e1-text/javascript"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js" type="770614da765b70ddde3db9e1-text/javascript"></script>
		
    <script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="770614da765b70ddde3db9e1-|49" defer></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"92224f8c4e2c002d","serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"version":"2025.1.0","token":"3ca157e612a14eccbb30cf6db6691c29"}' crossorigin="anonymous"></script>
</body>
</asp:Content>
