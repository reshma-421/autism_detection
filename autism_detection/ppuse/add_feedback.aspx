<%@ Page Title="" Language="C#" MasterPageFile="~/ppuse/Site2.Master" AutoEventWireup="true" CodeBehind="add_feedback.aspx.cs" Inherits="autism_detection.ppuse.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <main>
           <%--change done to reduce height of the blue box--%>
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
<h3 class="it-breadcrumb-title it-split-text it-split-in-right">Team Style-02</h3>
</div>
<div class=it-breadcrumb-list-wrap>
<div class=it-breadcrumb-list>
<span><a href=index.html>home</a></span>
<span class=dvdr>//</span>
<i>Team Style-02</i>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="it-contact-area it-contact-innar-style it-contact-style-2 pt-120 pb-120">
<div class=container>
<div class=row>
  <div class="col-xl-6 col-lg-6 mx-auto">
    <div class="it-contact-form-box z-index-1 p-relative text-center">
      <img class="it-contact-shape-1" src="assets/img/shape/contact-shape.png" alt="">
      <h4 class="it-contact-form-title mb-40">Let Us Know Your Thought</h4>
      <div class="mb-45">
        
          <div class="it-contact-input-wrap">
            <div class="row gx-20">
              <div class="col-12 mb-20">
                <div class="it-contact-input-box">
                  <asp:TextBox ID="txt_um" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
              </div>
              <div class="col-12 mb-20">
                <div class="it-contact-input-box">
   <asp:TextBox ID="txt_fb" runat="server" CssClass="form-control" placeholder="your thought"></asp:TextBox>
<div class="text-danger mt-1" style="min-height: 1.5em;">
    <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" 
        runat="server" 
        ErrorMessage="Enter feedback" 
        ControlToValidate="txt_fb"
        Display="Dynamic"
        CssClass="text-danger" />
</div>                </div>
              </div>
            </div>
           <div class="row">
  <div class="col-12 d-flex gap-2 justify-content-start it-contact-btn">
    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="it-btn-red hover-2 d-flex align-items-center justify-content-center" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="View" CssClass="it-btn-red hover-2 d-flex align-items-center justify-content-center" OnClick="Button2_Click" CausesValidation="false"/>
  </div>
</div>

          </div>
       
      </div>
    </div>
  </div>
</div>
</div>
</div>



</main>


</asp:Content>
