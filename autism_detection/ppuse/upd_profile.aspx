<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="upd_profile.aspx.cs" Inherits="autism_detection.ppuse.WebForm10" %>
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
        border: none;
    }

    .edit-btn:hover {
        background-color: #c02570;
    }

    .form-control {
        width: 100%;
        padding: 6px;
        margin-top: 4px;
        border: 1px solid #ccc;
        border-radius: 6px;
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
                        <h2>Edit Profile</h2>
                    </div>
                    <div class="row g-0">
                        <div class="col-md-4 p-3 text-center">
                            <asp:Image ID="pro" runat="server" CssClass="profile-img" />
                        </div>
                        <div class="col-md-8">
                            <div class="profile-body">
                                <h4 class="fw-bold mb-3">
                                    <asp:TextBox ID="txt_nm" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                                </h4>
                                <ul class="profile-details list-unstyled">
                                    <li><span>Username:</span><asp:TextBox ID="txt_un" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox></li>
                                    <li><span>Gender:</span><asp:TextBox ID="txt_gndr" runat="server" CssClass="form-control"></asp:TextBox></li>
                                    <li><span>Age:</span><asp:TextBox ID="txt_age" runat="server" CssClass="form-control"></asp:TextBox></li>
                                    <li><span>Height:</span><asp:TextBox ID="txt_hei" runat="server" CssClass="form-control"></asp:TextBox></li>
                                    <li><span>Weight:</span><asp:TextBox ID="txt_wei" runat="server" CssClass="form-control"></asp:TextBox></li>
                                    <li><span>Email:</span><asp:TextBox ID="txt_em" runat="server" CssClass="form-control"></asp:TextBox></li>
                                    <li><span>Phone:</span><asp:TextBox ID="txt_ph" runat="server" CssClass="form-control"></asp:TextBox></li>
                                </ul>
                                <div class="mt-4 text-end">
                                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="edit-btn" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- end profile card -->
            </div>
        </div>
    </div>
</main>
</asp:Content>
