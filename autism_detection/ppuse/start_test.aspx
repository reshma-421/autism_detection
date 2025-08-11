<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="start_test.aspx.cs" Inherits="autism_detection.ppuse.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
<div class="it-breadcrumb-area it-breadcrumb-overlay it-breadcrumb-ptb z-index-1 fix p-relative" data-background="assets/img/breadcrumb/breadcrumb.jpg">
<div class=container>
<div class=p-relative>
<div class=it-breadcrumb-shape-1>
<img src="assets/img/shape/shape-1-1.png" alt="">
</div>
<div class=row>
<div class=col-lg-12>
<div class="it-breadcrumb-content z-index-3">
<div class=it-breadcrumb-title-box>
<h3 class="it-breadcrumb-title it-split-text it-split-in-right">Start Test</h3>
</div>
<div class=it-breadcrumb-list-wrap>
<div class=it-breadcrumb-list>
<span><a href=index.html>home</a></span>
<span class=dvdr>//</span>
<i>Start Test</i>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="it-service-area pt-120 pb-90">
<div class=container>
<div class="row justify-content-center">
<div class="col-xl-8 col-lg-8 col-md-10">
<div class="it-section-title-box text-center mb-70">
<span class=it-section-subtitle>What we’re Offering</span>
<h6 class=it-section-title>"Discover personalized insights with our specialized autism assessment to better understand and support every unique journey."</h6>
</div>
</div>
</div>


<div class=row>

    <%--todler--%>
<div class="col-xl-4 col-lg-4 col-md-6 wow itfadeUp" data-wow-duration=.9s data-wow-delay=.3s>
<div class="it-service-item mb-30">
<div class="it-service-content mb-50">
<h4 class="fw-bold text-center">TODLERS</h4>
   
<div class="it-service-thumb" data-mask-src="assets/img/todler.jpeg">
    <img src="assets/img/todler.jpeg" alt="Toddler Image" style="width: 100%; height: auto;">
</div>
    <asp:Button ID="Button1" runat="server" Text="Start" OnClick="Button1_Click" />
</div>
</div>
</div>

      <%--childhood--%>

    <div class="col-xl-4 col-lg-4 col-md-6 wow itfadeUp" data-wow-duration=.9s data-wow-delay=.7s>
<div class="it-service-item mb-30">
<div class="it-service-content mb-50">
<h4 class="fw-bold text-center">CHILDHOOD</h4>

<div class=it-service-thumb data-mask-src="assets/img/adult.jpg">
<img src="assets/img/childhood.jpeg" alt=""  style="width: 100%; height: auto;">
</div>
        <asp:Button ID="Button3" runat="server" Text="Start" OnClick="Button3_Click" /></div>

</div>
</div>


    <%--teen--%>
   <div class="col-xl-4 col-lg-4 col-md-6 wow itfadeUp" data-wow-duration=.9s data-wow-delay=.3s>
<div class="it-service-item mb-30">
<div class="it-service-content mb-50">
<h4 class="fw-bold text-center">TEENAGE</h4>
   
<div class="it-service-thumb" data-mask-src="assets/img/teen.jpg">
    <img src="assets/img/teen.jpg" alt="Toddler Image" style="width: 100%; height: auto;">
</div>
    <asp:Button ID="Button2" runat="server" Text="Start" OnClick="Button2_Click" />
</div>
</div>
</div>



  


</div>
</div>
</div>
</main>
</asp:Content>
