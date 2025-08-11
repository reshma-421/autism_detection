<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="view_rslt_details.aspx.cs" Inherits="autism_detection.admin.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">

  

      <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm border-0">
                    <div class="card-body  justify-content-center p-5">

                        <h2 class="text-center fw-bold mb-5 text-primary">Result Details</h2>

                        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger text-center d-block mb-4"></asp:Label>

                        <!-- User Name -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">User Name:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_un" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>

                        <!-- Category -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Category:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_cat" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>

                        <!-- Mark -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Mark:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_mark" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>

                        <!-- Total Mark -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-sart fw-semibold">Total Mark:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_tmark" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>
                        
                        <!-- Test Date -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Test Date:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_test_date" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>

                        <!-- Test Time -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Test Time:</div>
                            <div class="col-sm-8">
                                <asp:Label ID="l_test_time" runat="server" CssClass="form-control-plaintext border rounded bg-light px-3"></asp:Label>
                            </div>
                        </div>



                        <!-- Percentage -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Percentage:</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txt_per" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter Percentage"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Diagnosis -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Diagnosis:</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txt_dia" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter Diagnosis"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Impression -->
                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Impression:</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txt_imp" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter Impression"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mb-3 align-items-center">
                            <div class="col-sm-4 text-start fw-semibold">Result:</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txt_r" runat="server" CssClass="form-control"  placeholder="Enter result id"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mb-3 align-items-center ">
                         
                            <div class="col-sm-6">
                                <asp:TextBox ID="txt_re" runat="server" CssClass="form-control fw-bold "> </asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Button ID="Button2" runat="server" Text="Test" CssClass="btn btn-warning  btn-lg btn-block" />
                            </div>
                        </div>




                                <div class="text-center">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
       
    </div>
</asp:Content>
