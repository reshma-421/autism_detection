<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="view_profile.aspx.cs" Inherits="autism_detection.ppuse.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
        .profile-container {
            background-color: #f9f9f9;
            padding: 40px 0;
        }

        .profile-card {
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            overflow: hidden;
        }

        .profile-header {
            background-color: #004080;
            color: white;
            padding: 20px;
        }

        .profile-body {
            padding: 30px;
        }

        .profile-img {
            width: 100%;
            border-radius: 10px;
        }

        .profile-details li {
            margin-bottom: 12px;
            font-size: 16px;
        }

        .profile-details li span {
            font-weight: 600;
            margin-right: 8px;
        }

        .edit-btn {
            background-color: #d63384;
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            text-decoration: none;
        }

        .edit-btn:hover {
            background-color: #c02570;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="container profile-container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="profile-card">
                        <div class="profile-header text-center">
                            <h2>Profile</h2>
                        </div>
                        <div class="row g-0">
                            <div class="col-md-4 p-3 text-center">
                                <asp:Image ID="pro" runat="server" />
<%--                                <img src="assets/img/team/female.jpg" alt="Profile Image" class="profile-img" />--%>

                            </div>
                            <div class="col-md-8">
                                <div class="profile-body">
                                    <h4 class="fw-bold mb-3">
                                        <asp:Label ID="l_nm" runat="server" Text=""></asp:Label>
                                    </h4>
                                    <ul class="profile-details list-unstyled">
                                        <li><span>Username:</span><asp:Label ID="l_un" runat="server" Text=""></asp:Label></li>
                                        <li><span>Gender:</span><asp:Label ID="l_gndr" runat="server" Text=""></asp:Label></li>
                                        <li><span>Age:</span><asp:Label ID="l_age" runat="server" Text=""></asp:Label></li>
                                        <li><span>Height:</span><asp:Label ID="l_hei" runat="server" Text=""></asp:Label></li>
                                        <li><span>Weight:</span><asp:Label ID="l_wei" runat="server" Text=""></asp:Label></li>
                                        <li><span>Email:</span><asp:Label ID="l_em" runat="server" Text=""></asp:Label></li>
                                        <li><span>Phone:</span><asp:Label ID="l_ph" runat="server" Text=""></asp:Label></li>
                                    </ul>
                                    <div class="mt-4">
                                        <%--<a href="WebForm10.aspx" class="edit-btn">Edit Profile</a>--%>
                                        <a class="it-btn-red hover-2" href=upd_profile.aspx>Edit Profile</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end card -->
                </div>
            </div>
        </div>
    </main>

</asp:Content>
