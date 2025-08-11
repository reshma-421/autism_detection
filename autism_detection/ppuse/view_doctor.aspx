<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="view_doctor.aspx.cs" Inherits="autism_detection.ppuse.WebForm2" %>
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
<h3 class="it-breadcrumb-title it-split-text it-split-in-right">Hospitals</h3>
</div>
<div class=it-breadcrumb-list-wrap>
<div class=it-breadcrumb-list>
<span><a href=index.html>home</a></span>
<span class=dvdr>//</span>
<i>Hospitals</i>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="it-team-area it-team-innar-style pt-120 pb-120">
<div class=container>
<div class="it-blog-title-wrap p-relative mb-70">
<div class="row justify-content-center">
<div class="col-xl-7 col-lg-6">
<div class="it-section-title-box text-center">
<span class=it-section-subtitle>our team</span>
<h4 class=it-section-title>Our dedicated team ensures
exceptional outcomes.</h4>
</div>
</div>
</div>
</div>
<div class="row">
    <asp:Repeater ID="rptautism" runat="server">
        <ItemTemplate>
            <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-30 wow itfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
                <div class="it-team-item text-center h-100 d-flex flex-column"> <!-- Added h-100 and flex classes -->
                    <div class="it-team-thumb mb-25 flex-shrink-0"> <!-- Prevent image container from shrinking -->
                        <img src='../doct/<%# Eval("Image") %>' class="img-fluid" style="height:200px; width:200px; object-fit:cover; border-radius:8px;" alt="Doctor image">
                    </div>
                    <div class="it-team-content pb-4 flex-grow-1" style="min-height: 180px;"> <!-- Fixed minimum height -->
                        <h4 class="it-team-title mb-2">
                            <a class="border-line-white" href="team-details.html"><%# Eval("Name") %></a>
                        </h4>
                        <div class="d-block mb-1"><%# Eval("Specification") %></div>
                        <div class="d-block mb-1"><%# Eval("Category") %></div>
                        <div class="d-block mb-1 text-truncate"><%# Eval("Email") %></div>
                        <div class="d-block"><%# Eval("Phone") %></div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
</div>
</div>





</main>


</asp:Content>
