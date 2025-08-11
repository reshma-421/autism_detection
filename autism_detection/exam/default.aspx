<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="autism_detection.exam._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
      <title></title>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>  
        <style>  
            body {  
                margin: auto;  
            }  
              
            .main-div {  
                position: absolute;  
                display: table;  
                width: 100%;  
                height: 100%;  
                background: #cccca0;  
            }  
              
            .main-inner-div {  
                display: table-cell;  
                vertical-align: middle;  
                text-align: center;  
            }  
              
            .main-content {  
                display: inline-block;  
                text-align: left;  
                background: #ddffca;  
                padding: 200px;  
                border: 1px solid #000;  
                border-radius: 10px;  
            }  
              
            .btn {  
                background: #000000;  
                background-image: -webkit-linear-gradient(top, #000000, #2980b9);  
                background-image: -moz-linear-gradient(top, #000000, #2980b9);  
                background-image: -o-linear-gradient(top, #000000, #2980b9);  
                background-image: linear-gradient(to bottom, #000000, #2980b9);  
                -webkit-border-radius: 0;  
                -moz-border-radius: 0;  
                border-radius: 6px;  
                font-family: Arial;  
                color: #ffffff;  
                font-size: 19px;  
                padding: 3px 20px;  
                text-decoration: none;  
            }  
              
            .btn:hover {  
                background: #261c61;  
                background-image: -webkit-linear-gradient(top, #261c61, #3498db);  
                background-image: -moz-linear-gradient(top, #261c61, #3498db);  
                background-image: -o-linear-gradient(top, #261c61, #3498db);  
                background-image: linear-gradient(to bottom, #261c61, #3498db);  
                text-decoration: none;  
                cursor: pointer;  
            }  
        </style>  
        <script>  
            function StartTest(popUpPage) {  
                window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');  
            }  
        </script>  
</head>
<body>
    <form id="form1" runat="server">
      <div class="main-div">  
                <div class="main-inner-div">  
                    <div class="main-content">  
                        <table>  
                            <tr>  
                                <td style="text-align:center;">  
                                    <b>  
<asp:Label ID="lbstatus" runat="server"></asp:Label>  
</b>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td style="text-align:center;"><b>Start You online Asp.Net Test</b></td>  
                            </tr>  
                            <tr>  
                                <td style="text-align: center;">  
                                    <asp:Button ID="btnStartTest" Text="Start Test" runat="server" OnClientClick="return StartTest('default2.aspx');" CssClass="btn" />  
                                </td>  
                            </tr>  
                        </table>  
                    </div>  
                </div>  
            </div> 
    </form>
</body>
</html>
