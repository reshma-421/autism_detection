<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="result_history.aspx.cs" Inherits="autism_detection.ppuse.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<main>
  <div class="it-service-4-area it-service-5-style theme-bg p-relative z-index-1 pt-50 pb-50">
    <img class="it-service-5-bg" src="assets/img/service/service-bg-5-1.jpg" alt="">

    <div class="container">
      <div class="it-service-title-wrap mb-70">
        <div class="row justify-content-center">
          <div class="col-auto text-center">
            <div class="it-section-title-box">
              <span class="it-section-subtitle white-subtitle fs-3 fw-bold text-uppercase">🎯 Your Result</span>
            </div>
          </div>
        </div>
      </div>

      <div class="row gx-35 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-2 row-cols-1 d-flex justify-content-center">
        <asp:Repeater ID="rptautism" runat="server">
          <ItemTemplate>
            <div class="col mb-30 wow itfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
              <div class="it-service-4-item text-center p-4 rounded-3 shadow bg-white">
                
                <h4 class="text-primary fw-bold mb-3">
                  <asp:Label ID="l_nm" runat="server" Text='<%# Eval("name") %>' CssClass="text-danger"></asp:Label>
                </h4>

                <h6 class="mb-2 text-dark">
                  <i class="fas fa-notes-medical text-danger me-1"></i>
                  Diagnosis: <asp:Label ID="l_dia" runat="server" class="text-primary"  Text='<%# Eval("diagnosis") %>'></asp:Label>
                </h6>

                <h6 class="mb-2 text-dark">
                  <i class="fas fa-layer-group text-info me-1"></i>
                  Category: <asp:Label ID="l_cat" runat="server"  class="text-info" Text='<%# Eval("cat") %>'></asp:Label>
                </h6>

                <h6 class="mb-2 text-dark">
                  <i class="fas fa-star text-warning me-1"></i>
                  Mark: <asp:Label ID="l_mrk" runat="server" Text='<%# Eval("mark") %>'></asp:Label>
                </h6>

                <%--<h6 class="mb-2 text-dark">
                  <i class="fas fa-clock text-secondary me-1"></i>
                  Time: <asp:Label ID="l_tim" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                </h6>

                <h6 class="text-dark">
                  <i class="fas fa-calendar-alt text-success me-1"></i>
                  Date: <asp:Label ID="l_date" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                </h6>--%>

              </div>
            </div>
          </ItemTemplate>
        </asp:Repeater>
      </div>
    </div>
  </div>
</main>



</asp:Content>

				