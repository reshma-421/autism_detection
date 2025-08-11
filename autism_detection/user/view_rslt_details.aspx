<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_rslt_details.aspx.cs" Inherits="autism_detection.user.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="content">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <div class="card shadow-sm border-0 rounded-4">
                <div class="card-body p-5">

                    <h2 class="text-center fw-bold text-primary mb-5">Result Details</h2>

                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert alert-danger text-center d-block mb-4" Visible="false"></asp:Label>

                    <div class="row g-3">

                        <div class="col-md-6">
                            <label class="form-label fw-semibold">User Name:</label>
                            <asp:Label ID="l_un" runat="server" CssClass="form-control bg-light px-3" />
                        </div>

                        <div class="col-md-6">
                            <label class="form-label fw-semibold">Category:</label>
                            <asp:Label ID="l_cat" runat="server" CssClass="form-control bg-light px-3" />
                        </div>

                        <div class="col-md-6">
                            <label class="form-label fw-semibold">Mark:</label>
                            <asp:Label ID="l_mark" runat="server" CssClass="form-control bg-light px-3" />
                        </div>

                        <div class="col-md-6">
                            <label class="form-label fw-semibold">Total Mark:</label>
                            <asp:Label ID="l_tmark" runat="server" CssClass="form-control  bg-light px-3" />
                        </div>

                        <div class="col-md-12">
                            <label class="form-label fw-semibold">Percentage:</label>
                            <asp:TextBox ID="txt_per" runat="server" CssClass="form-control bg-light" ReadOnly="true" />
                        </div>



                        <div class="col-12">
                            <label class="form-label fw-semibold">Diagnosis:</label>
                            <asp:TextBox ID="txt_dia" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" />
                        </div>

                        <div class="col-12">
                            <label class="form-label fw-semibold">Impression:</label>
                            <asp:TextBox ID="txt_imp" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" />
                        </div>

                        <div class="col-12">
                            <label class="form-label fw-semibold">Result:</label>
                            <asp:TextBox ID="txt_r" runat="server" CssClass="form-control" TextMode="singleline"  />
                        </div>

                        <div class="col-12 text-center mt-4">
                            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary" />                  

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
