<%@ Page Title="" Language="C#" MasterPageFile="~/public_users/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="autism_detection.public_users.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                    <div class="account-logo">
                                        <%--<a href="index.html"><img src="assets/img/login-logo.png" alt=""></a>--%>
                                    </div>
                                    <h2>Reset Password</h2>
                                    <!-- Form -->
                                    <div>
                                        <div class="input-block" id="emailSection" runat="server">
                                            <label>Email <span class="login-danger">*</span></label>
                                            <asp:TextBox ID="txt_em" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter valid email" ControlToValidate="txt_em" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct email format" ControlToValidate="txt_em" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                        
                                        <div class="input-block" id="passwordSection" runat="server" visible="false">
                                            <label>New Password <span class="login-danger">*</span></label>
                                            <asp:TextBox ID="txt_newPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter new password" ControlToValidate="txt_newPass" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        
                                        <div class="input-block" id="confirmPassSection" runat="server" visible="false">
                                            <label>Confirm New Password <span class="login-danger">*</span></label>
                                            <asp:TextBox ID="txt_confirmPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Confirm your password" ControlToValidate="txt_confirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="txt_newPass" ControlToValidate="txt_confirmPass" ForeColor="Red"></asp:CompareValidator>
                                        </div>
                                        
                                        <div class="input-block login-btn">
                                            <asp:Button ID="btnVerifyEmail" runat="server" Text="Next" class="btn btn-danger btn-block" OnClick="btnVerifyEmail_Click" />
                                            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" class="btn btn-danger btn-block" OnClick="btnResetPassword_Click" Visible="false" />
                                        </div>

                                    </div>
                                    <!-- /Form -->
                                      
                                    <div class="next-sign">
                                        <p class="account-subtitle">Remember your password? <a href="login.aspx">Login</a></p>
                                        
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
</asp:Content>
