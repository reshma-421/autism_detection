<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="view_result_details.aspx.cs" Inherits="autism_detection.user.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="content py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="card border-0 shadow-lg rounded-5 bg-light">
                    <div class="card-body p-5">

                        <h2 class="text-center fw-bold text-dark mb-4">Result Details</h2>

                        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert alert-danger text-center mb-4" Visible="false"></asp:Label>

                        <div class="row gy-4">

                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">User Name</small>
                                    <asp:Label ID="l_un" runat="server" CssClass="d-block h5 mt-1 text-dark" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">Category</small>
                                    <asp:Label ID="l_cat" runat="server" CssClass="d-block h5 mt-1 text-dark" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">Mark</small>
                                    <asp:Label ID="l_mark" runat="server" CssClass="d-block h5 mt-1 text-success" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">Total Mark</small>
                                    <asp:Label ID="l_tmark" runat="server" CssClass="d-block h5 mt-1 text-info" />
                                </div>
                            </div>

                             <!-- Test Date -->
                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">Test Date</small>
                                    <asp:Label ID="l_test_date" runat="server" CssClass="d-block h5 mt-1 text-dark" />
                                </div>
                            </div>

                             <!-- Test Time -->
                            <div class="col-md-6">
                                <div class="p-3 bg-white rounded-4 shadow-sm">
                                    <small class="text-secondary fw-bold">Test Time</small>
                                    <asp:Label ID="l_test_time" runat="server" CssClass="d-block h5 mt-1 text-dark" />
                                </div>
                            </div>

                            <!-- Percentage -->
                            <div class="col-12">
                                 <label class="text-muted small">Percentage</label>
                                <div >
                                    <asp:TextBox ID="txt_per" runat="server" CssClass="form-control bg-white text-info fw-bold" ReadOnly="true" />
                                   
                                </div>
                            </div>

                            <!-- Diagnosis -->
                            <div class="col-12">
                                  <label class="text-muted small">Diagnosis</label>
                                <div >
                                    <asp:TextBox ID="txt_dia" runat="server" CssClass="form-control bg-white" TextMode="MultiLine" Rows="2" ReadOnly="true" />
                                  
                                </div>
                            </div>

                            <!-- Impression -->
                            <div class="col-12">
                                <label class="text-muted small">Impression</label>
                                <div >
                                    <asp:TextBox ID="txt_imp" runat="server" CssClass="form-control bg-white" TextMode="MultiLine" Rows="2" ReadOnly="true" />
                                    
                                </div>
                            </div>

                            <!-- Result -->
                            <div class="col-12">
                                <label class="text-muted small">Result</label>
                                <div >
                                    <asp:TextBox ID="txt_r" runat="server" CssClass="form-control bg-white" TextMode="MultiLine" Rows="2" />
                                    
                                </div>
                            </div>

                            <!-- Retake -->
                            <div class=" col-12 ">
                                <div class="row">
                                <div class="col-sm-6">
                                
                                        <asp:TextBox ID="txt_re" runat="server" CssClass="form-control fw-bold" />
                                
                                </div>
                                 <div class="col-sm-6">
                                     <asp:Button ID="Button2" runat="server" Text="Test" CssClass=" form-control btn btn-warning  btn-lg btn-block" />
                                </div>
                                    </div>
                            </div>


                        <div  class="col-12 text-center mt-4">
                            <asp:Button ID="Button1" runat="server" Text="Go to Home"  CssClass="btn btn-primary" OnClick="Button1_Click"/>                  

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
