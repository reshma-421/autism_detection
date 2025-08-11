<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="view_feedback.aspx.cs" Inherits="autism_detection.ppuse.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .feedback-item {
            background: linear-gradient(135deg, #fff5e6 0%, #ffe0cc 100%);
            border-left: 5px solid #ff8c42;
            box-shadow: 0 4px 12px rgba(255, 140, 66, 0.15);
        }
        .user-avatar {
            width: 48px;
            height: 48px;
            object-fit: cover;
            border: 2px solid #ff8c42;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <main>
        <!-- Your breadcrumb section here -->

        <!-- Feedback Repeater -->

        <div class="container py-5">
<div class="text-center">
    <asp:Label ID="lblNoData" runat="server" CssClass="text-danger fw-bold" Visible="false" Text="No feedback available."></asp:Label>
</div>
            <asp:Repeater ID="rptautism" runat="server">
                <ItemTemplate>
                    

<%--                          <asp:Label runat="server" Text='<%# Eval("Gender") %>' />--%>

                    <div class="col-12 mb-4">
                        <div class="d-flex align-items-start gap-3 p-4 rounded feedback-item">
                            <!-- Avatar with gender-based image -->
                            <div class="flex-shrink-0">
                            <img src='<%# (Eval("Gender") != null && Eval("Gender").ToString().Trim().ToLower() == "female") 
            ? "assets/img/team/female.jpg" 
            : "assets/img/team/male.jpg" %>' 
     class="rounded-circle user-avatar" 
     alt="User Avatar">

                            </div>

                            <!-- Feedback Content -->
                            <div class="flex-grow-1">
                                <h6 class="mb-1 fw-semibold" style="color: #d35400;">
                                    <%# Eval("Username") %>
                                </h6>
                                <p class="mb-0" style="font-style: italic;">
                                    <%# Eval("Feedback") %>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </main>
</asp:Content>
