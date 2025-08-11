<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="add_diagnosis.aspx.cs" Inherits="autism_detection.admin.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div class="content">
				<!-- Page Header -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard </a></li>
								<li class="breadcrumb-item"><i class="feather-chevron-right"></i></li>
								<li class="breadcrumb-item active">Add Diagnosis</li>
							</ul>
						</div>
					</div>
				</div>
         <div class="d-flex justify-content-center">

      
		  <div class="col-md-6">
                        <div class="card-box">
                            <div class="card-title h1 text-center fw-bold">Diagnosis</div>
                            <form action="#">
                                <div class="input-block">
                                    <label class="mb-2">User Name:</label>
                                    <asp:TextBox ID="txt_un" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_un"></asp:RequiredFieldValidator>
                                    
                                </div>
                                <div class="input-block">
                                    <label class="mb-2">Diagnosis: </label>
                                    <asp:TextBox ID="txt_dia" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_dia"></asp:RequiredFieldValidator>

                                </div>
                                <div class="input-block">
                                    <label class="mb-2">Impression:</label>
                                    <asp:TextBox ID="txt_im" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_im"></asp:RequiredFieldValidator>

                                </div>
                              <%--  <div class="input-block">
                                    <label>State</label>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-block">
                                    <label>Country</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-block">
                                    <label>Postal Code</label>
                                    <input type="text" class="form-control">
                                </div>--%>
                                <div class="text-center">
                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
       </div>



</asp:Content>
