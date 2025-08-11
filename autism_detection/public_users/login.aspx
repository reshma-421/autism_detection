<%@ Page Title="" Language="C#" MasterPageFile="~/public_users/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="autism_detection.public_users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <body>
	
		
		<div class="main-wrapper login-body">
			<div class="container-fluid px-0">
				<div class="row">
				
					
					<div class="col-lg-6 login-wrap">
						<div class="login-sec">
							<div class="log-img">
								<img class="img-fluid" src="assets/img/reg2.png" alt="Logo">
							</div>
						</div>
					</div>
					
					<div class="col-lg-6 login-wrap-bg">
						<div class="login-wrapper">
							<div class="loginbox">								
								<div class="login-right">
									<div class="login-right-wrap">
										<%--<div class="account-logo">
											<h2 class="text-danger">Autism Detection</h2>
											<a href="index.html">--%><%--<img src="assets/img/login-logo.png" alt="">--%> <%--</a>
										</div>--%>
										<h2 class="text-center">Login</h2>
								
										<form action="index.html">
											<div class="input-block">
												<label>Username </label>
												<asp:TextBox ID="txt_uname" runat="server" class="form-control" type="text"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter valid user name" ControlToValidate="txt_uname" ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
											<div class="input-block">
												<label>Password </label>
												<asp:TextBox ID="txt_pass" runat="server"  class="form-control pass-input" type="password"></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter password" ControlToValidate="txt_pass" ForeColor="Red"></asp:RequiredFieldValidator>
												<%--<span class="profile-views feather-eye-off toggle-password"></span>--%>
											</div>
											
											<div class="forgotpass">
												<div class="remember-me">
													<label class="custom_check mr-2 mb-0 d-inline-flex remember-me"> Remember me
													<input type="checkbox" name="radio">
													<span class="checkmark"></span>
													</label>
												</div>
												<a class="text-danger" href="forgotpass.aspx">Forgot Password?</a>
											</div>
											<div class="input-block login-btn">
												<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-danger btn-block" type="submit" OnClick="Button1_Click"/>
												
											</div>
										</form>
										
										  
										<div class="next-sign">
											<p class="account-subtitle">Need an account?  <a class="text-danger" href="register.aspx">Sign Up</a></p>
											
											
											<div class="social-login">
												<a href="javascript:;"><img src="assets/img/icons/login-icon-01.svg" alt=""></a>
												<a href="javascript:;"><img src="assets/img/icons/login-icon-02.svg" alt=""></a>
												<a href="javascript:;"><img src="assets/img/icons/login-icon-03.svg" alt=""></a>
											</div>
											
											
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		</body>

</asp:Content>
