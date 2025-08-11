<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="view_activities.aspx.cs" Inherits="autism_detection.ppuse.WebForm4" %>
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
<h3 class="it-breadcrumb-title it-split-text it-split-in-right">Activities</h3>
</div>
<div class=it-breadcrumb-list-wrap>
<div class=it-breadcrumb-list>
<span><a href=index.html>home</a></span>
<span class=dvdr>//</span>
<i>Activities</i>
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
<span class="it-section-subtitle">our activities</span>
<h4 class="it-section-title">Engaging sessions designed to support and empower individuals.</h4>
</div>
</div>
</div>
</div>
<div class="row">
    <asp:Repeater ID="rptautism" runat="server">
        <ItemTemplate>
            <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 wow itfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
                <div class="it-service-2-item zoom mb-30 h-100 d-flex flex-column" style="overflow: hidden;">
                    <div class="it-service-2-thumb img-zoom" style="height: 200px;">
                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/<%# Eval("Hint") %>" frameborder="0" allowfullscreen style="border: none;"></iframe>
                    </div>
                    <div class="it-service-content p-relative p-3 flex-grow-1 d-flex flex-column">
                        <div class="text-center">
                            <h4 class="text-danger"><%# Eval("Activity name") %></h4>
                        </div>
                        <p class="mb-0 flex-grow-1"><%# Eval("Details") %></p>
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
