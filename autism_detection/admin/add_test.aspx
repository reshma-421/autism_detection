<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_test.aspx.cs" Inherits="autism_detection.admin.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .card{
            background-color:lightblue;
        }
    </style>
    
         <div class="row d-flex gap-3 justify-content-center align-items-center text-center mt-4">


<%--             <div class="card text-dark  mb-3 d-inline-block d-flex justify-content-center align-items-center text-center" style="max-width: 20rem;">
              <div class="card-header"> <h2>Test Newborn</h2></div>
              <div class="card-body">
   
                  <p>The Autism Spectrum Quotient Test is a parent-administered 50-question questionnaire used to measure autistic traits in newbons .</p>
                   <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary mt-3" OnClick="Button1_Click"   />
                  <asp:Button ID="Button6" runat="server" Text="View" CssClass="btn btn-primary mt-3" OnClick="Button6_Click" />
              </div>
            </div>--%>


            <div class="card text-dark  mb-3 d-inline-block d-flex justify-content-center align-items-center text-center" style="max-width: 20rem;">
              <div class="card-header"><h2> Test Todler</h2></div>
              <div class="card-body">
     
               <p>The Autism Spectrum Quotient Test is a parent-administered  questionnaire used to measure autistic traits in todlers.</p>
                  <asp:Button ID="Button2" runat="server" Text="Add"  CssClass="btn btn-primary mt-3" OnClick="Button2_Click" />
                  <asp:Button ID="Button7" runat="server" Text="View" CssClass="btn btn-primary mt-3" OnClick="Button7_Click" />
              </div>
            </div>


                <div class="card text-dark  mb-3 d-inline-block d-flex justify-content-center align-items-center text-center" style="max-width: 20rem;">
              <div class="card-header"><h2> Test Childhood</h2></div>
              <div class="card-body">
   
               <p>The Autism Spectrum Quotient Test is a parent-administered  questionnaire used to measure autistic traits in  childhood. </p>
                  <asp:Button ID="Button3" runat="server" Text="Add"  CssClass="btn btn-primary mt-3" OnClick="Button3_Click" />
                  <asp:Button ID="Button8" runat="server" Text="View" CssClass="btn btn-primary mt-3" OnClick="Button8_Click" />
              </div>
            </div>


                         <%--</div>
   

                  <div class="row d-flex gap-3 justify-content-center align-items-center text-center">--%>

          
            <div class="card text-dark  mb-3 d-inline-block d-flex justify-content-center align-items-center text-center" style="max-width: 20rem;">
              <div class="card-header"><h2> Test Teenage</h2></div>
              <div class="card-body">
   
               <p>The Autism Spectrum Quotient Test is a parent-administered  questionnaire used to measure autistic traits in teenagers. </p>
                  <asp:Button ID="Button4" runat="server" Text="Add"  CssClass="btn btn-primary mt-3" OnClick="Button4_Click"/>
                  <asp:Button ID="Button10" runat="server" Text="View" CssClass="btn btn-primary mt-3" OnClick="Button10_Click" />
              </div>
            </div>

          
           <%-- <div class="card text-dark  mb-3 d-inline-block d-flex justify-content-center align-items-center text-center" style="max-width: 20rem;">
              <div class="card-header"><h2>Test Adult</h2></div>
              <div class="card-body">
     
               <p>The Autism Spectrum Quotient Test is a self / parent-administered 50-question questionnaire used to measure autistic traits in adult. </p>
                  <asp:Button ID="Button5" runat="server" Text="Add"  CssClass="btn btn-primary mt-3" OnClick="Button5_Click"  />
                  <asp:Button ID="Button9" runat="server" Text="View" CssClass="btn btn-primary mt-3" OnClick="Button9_Click" />
              </div>
            </div>--%>



  </div> 

</asp:Content>
