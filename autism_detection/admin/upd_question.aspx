<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="upd_question.aspx.cs" Inherits="autism_detection.admin.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row  d-flex justify-content-center">
                <div class="col-10">
                   
                    <form action="#">
                        <div class="card-box">
                             <h2 class="text-center">Edit  Question</h2>

                             <div class="input-block row mt-4">
                                 <label class="col-lg-3 col-form-label">Category</label>
                                 <div class="col-lg-9">
                                     <asp:TextBox ID="txt_cat" runat="server" type="text" class="form-control"></asp:TextBox>
                                             <%--<asp:DropDownList ID="d_cat" runat="server">
                                                 <asp:ListItem>Newborn</asp:ListItem>
                                                 <asp:ListItem>Todler</asp:ListItem>
                                                 <asp:ListItem>Childhood</asp:ListItem>
                                                 <asp:ListItem>Teenage</asp:ListItem>
                                                 <asp:ListItem>Adult</asp:ListItem>
                                             </asp:DropDownList>--%>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_cat" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                            <div class="input-block row">
                                <label class="col-lg-3 col-form-label">Question number</label>
                                <div class="col-lg-9">
                                    <asp:TextBox ID="txt_nmbr" runat="server" type="text" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_nmbr" ForeColor="Red"></asp:RequiredFieldValidator>
    
                                </div>
                            </div>

                            <div class="input-block row ">
                                <label class="col-lg-3 col-form-label">Question</label>
                                <div class="col-lg-9">
                                    <asp:TextBox ID="txt_qstn" runat="server" type="text" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_qstn" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                                <div >
                                   
                                    <div class="input-block row">
                                        <label class="col-lg-3 col-form-label">Options</label>
                                        <div class="col-lg-9">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:TextBox ID="txt_o1" runat="server" type="text" placeholder="Option1" class="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_o1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:TextBox ID="txt_o2" runat="server" type="text" placeholder="Option2" class="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txt_o2" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="input-block row">
                                        <label class="col-lg-3 col-form-label">Anawer</label>
                                        <div class="col-lg-9">
                                            <asp:TextBox ID="txt_ans" runat="server" type="text" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txt_ans" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                     <div class="text-center">
                                         <asp:Button ID="Button2" runat="server" Text="Update" type="submit" class="btn btn-primary" OnClick="Button2_Click" />
                                         <asp:Button ID="Button1" runat="server" Text="Cancel" class="btn btn-primary" type="cancel" OnClick="Button1_Click" />                                      
                                         
                                     </div>
                       
                                </div>
                            </div>
                           
                    </form>
                </div>
            </div>
</asp:Content>
