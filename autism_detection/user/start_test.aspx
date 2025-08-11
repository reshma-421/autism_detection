<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="start_test.aspx.cs" Inherits="autism_detection.user.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        .full-screen-center {
            min-height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
           /* background: linear-gradient(135deg, #e0f7fa, #e1bee7);*/
           
        }

        .test-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 50px 40px;
            max-width: 550px;
            width: 100%;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .test-card h1 {
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: 20px;
            color: #333;
        }

        .test-card p {
            font-size: 1rem;
            color: #666;
            margin-bottom: 30px;
        }

        .start-btn {
            font-size: 1.1rem;
            padding: 12px 28px;
            border-radius: 50px;
            background-color: #6200ea;
            color: white;
            border: none;
        }

        .start-btn:hover {
            background-color: #3700b3;
        }

        @media (max-width: 576px) {
            .test-card {
                padding: 30px 20px;
            }

            .test-card h1 {
                font-size: 1.5rem;
            }

        }
               .row-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 20px;
                width: 100%;
            }

            .test-card {
                flex: 1 1 300px;
                max-width: 320px;
            }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
         <form id="form1" >
        <div class="content full-screen-center">
            <div class="row-container">
                <!-- Card 1 -->
                <div class="test-card">
                    <h1> Autism Detection Newborn Test</h1>
                    <p>Answer a few quick questions to help identify early signs of autism.</p>
                    <asp:Button ID="Button1" runat="server" Text="Start Test" CssClass="start-btn" OnClick="Button1_Click" />
                </div>

                <!-- Card 2 -->
                <div class="test-card">
                    <h1> Autism Detection Toddler Test</h1>
                    <p>Answer a few quick questions to help identify early signs of autism.</p>
                    <asp:Button ID="Button2" runat="server" Text="Start Test" CssClass="start-btn" OnClick="Button2_Click" />
                </div>

                <!-- Card 3 -->
                <div class="test-card">
                    <h1> Autism Detection Childhood Test</h1>
                    <p>Answer a few quick questions to help identify early signs of autism.</p>
                    <asp:Button ID="Button3" runat="server" Text="Start Test" CssClass="start-btn" OnClick="Button3_Click" />
                </div>

                <!-- Card 4 -->
                <div class="test-card">
                    <h1> Autism Detection Teenager Test</h1>
                    <p>Answer a few quick questions to help identify early signs of autism.</p>
                    <asp:Button ID="Button4" runat="server" Text="Start Test" CssClass="start-btn" OnClick="Button4_Click" />
                </div>

                <!-- Card 5 -->
                <div class="test-card">
                    <h1> Autism Detection Adult Test</h1>
                    <p>Answer a few quick questions to help identify early signs of autism.</p>
                    <asp:Button ID="Button5" runat="server" Text="Start Test" CssClass="start-btn" OnClick="Button5_Click" />
                </div>
            </div>
        </div>
    </form>
    </div>
</asp:Content>
