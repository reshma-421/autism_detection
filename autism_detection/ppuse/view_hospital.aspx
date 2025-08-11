﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="view_hospital.aspx.cs" Inherits="autism_detection.ppuse.WebForm3" %>
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
<%--<span class=it-section-subtitle>our team</span>--%>
<h4 class=it-section-title>Our dedicated team ensures
exceptional outcomes.</h4>
</div>
</div>
</div>
</div>
<div class=row>
    <asp:Repeater ID="rptautism" runat="server">
        <ItemTemplate>

        
            <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-30 d-flex">
            <div class="it-team-item text-center d-flex flex-column justify-content-between w-100">
            <div class="it-team-thumb mb-25">
            <img src='../hosp/<%# Eval("image") %>' style="width:250px; height:150px; object-fit:cover; border-radius:8px;" alt="">
            </div>
            <div class="it-team-content pb-3">
            <h4 class=it-team-title><%# Eval("Name") %></a>
            </h4>
            <span><%# Eval("Address") %></span>
                <span><%# Eval("Contact") %></span>

                <div style="margin-top: 10px;">
                     <span> <a href='view_doctor.aspx?hospital=<%# Eval("Name") %>' class="btn btn-danger btn-sm mt-2">View Doctors</a> </span>

                </div>
               
            </div>
            <%--<div class=it-team-social>
            <a href="#">
            <span>
            <svg width=12 height=16 viewBox="0 0 12 16" fill=none xmlns="http://www.w3.org/2000/svg">
            <path fill-rule=evenodd clip-rule=evenodd d="M1.82727 6.83333C1.14284 6.83333 1 6.96763 1 7.61111V8.77778C1 9.42126 1.14284 9.55556 1.82727 9.55556H3.48182V14.2222C3.48182 14.8657 3.62466 15 4.30909 15H5.96364C6.64807 15 6.79091 14.8657 6.79091 14.2222V9.55556H8.64871C9.1678 9.55556 9.30155 9.4607 9.44416 8.99145L9.7987 7.82478C10.043 7.02095 9.89246 6.83333 9.00326 6.83333H6.79091V4.88889C6.79091 4.45933 7.16129 4.11111 7.61818 4.11111H9.97273C10.6572 4.11111 10.8 3.97681 10.8 3.33333V1.77778C10.8 1.1343 10.6572 1 9.97273 1H7.61818C5.33373 1 3.48182 2.74111 3.48182 4.88889V6.83333H1.82727Z" stroke=currentcolor stroke-width=1.5 stroke-linejoin=round />
            </svg>
            </span>
            </a>
            <a href="#">
            <span>
            <svg width=14 height=13 viewBox="0 0 14 13" fill=none xmlns="http://www.w3.org/2000/svg">
            <path fill-rule=evenodd clip-rule=evenodd d="M4.41177 0H0L5.23083 6.87316L0.334618 12.6389H2.59681L6.29998 8.27809L9.58823 12.5988H14L8.6172 5.52593L8.62673 5.53813L13.2614 0.0802914H10.9992L7.55741 4.13336L4.41177 0ZM2.43522 1.20371H3.80866L11.5648 11.395H10.1913L2.43522 1.20371Z" fill=currentcolor />
            </svg>
            </span>
            </a>
            <a href="#">
            <span>
            <svg width=18 height=18 viewBox="0 0 18 18" fill=none xmlns="http://www.w3.org/2000/svg">
            <path d="M16.9989 10.0113C16.2575 9.87227 15.4949 9.7998 14.7168 9.7998C10.435 9.7998 6.62665 11.9938 4.19922 15.3997M14.5997 3.39941C12.0962 6.33329 8.33416 8.19931 4.12763 8.19931C3.05145 8.19931 2.00436 8.07718 1 7.84627M11.0941 17.0005C11.2946 16.0293 11.3999 15.0235 11.3999 13.9931C11.3999 8.94036 8.86738 4.47788 5 1.80078M16.9997 8.99983C16.9997 13.418 13.418 16.9997 8.99983 16.9997C4.58165 16.9997 1 13.418 1 8.99983C1 4.58165 4.58165 1 8.99983 1C13.418 1 16.9997 4.58165 16.9997 8.99983Z" stroke=currentcolor stroke-width=1.5 stroke-linejoin=round />
            </svg>
            </span>
            </a>
            </div>--%>
            </div>
                </div>
                </ItemTemplate>
    </asp:Repeater>
    </div>


<%--    <div class=row>
<div class=col-12>
<div class="it-pagination text-center mt-30">
<nav>
<ul>
<li>
<a href=team-v2.html>
<i class="fa-light fa-angle-left"></i>
</a>
</li>
<li>
<a href=team-v2.html>1</a>
</li>
<li>
<a href=team-v2.html>2</a>
</li>
<li class=current>
<a href=team-v2.html>3</a>
</li>
<li>
<a href=team-v2.html>
<i class="fa-light fa-angle-right"></i>
</a>
</li>
</ul>
</nav>
</div> </div>
</div>--%>
</div>
</div>
</main>



</asp:Content>
