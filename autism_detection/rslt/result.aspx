<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="autism_detection.rslt.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="assets/favicon.ico" rel="shortcut icon">
 <link href="../../css?family=Open+Sans:300,600|Raleway:300,400" rel="stylesheet">
 <link href="assets/css/asf2525xljt.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="main">
    <div id="page-loader">
        <div class="spinner-container">
            <div class="css-spinner"></div>
        </div>
    </div>
   
         <section class="hero hero-1" id="hero">
     <div class="front-content page-enter-animated">
         <div class="container-mid">
             <%--<img alt="logo" class="logo" src="assets/images/logo.png">--%>
             <div class="cycle-wrapper">
                 <div id="cycle">
                     <div class="slide">
                         <h1>
                             <asp:Label ID="lbl_result" runat="server" Text="Label"></asp:Label>
                         <%--    DESIGN <span>&</span><br>
                             CREATIVE DIGITAL<br>
                             SOLUTIONS.--%>
                         </h1>
                     </div>
                      <%-- <div class="slide">
                         <h1>
                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                           AGENCY <span>&</span><br>
                             BUSINESS DESIGN<br>
                             STRATEGYS.
                         </h1>
                     </div>
                     <div class="slide">
                         <h1>
                             MODERN <span>&</span><br>
                             CREATIVE TEMPLATE<br>
                             DEVELOPMENT.
                         </h1>
                     </div>--%>
                 </div>
             </div>
             <p>
                 <asp:Label ID="lblsts" runat="server" Text="Label"></asp:Label></p>  <a href="../ppuse/result_history.aspx" <i class="ti-arrow-down"></i> </a>
           <%--  <div class="arrow-wrap go-down">
                 <div class="open-overlay down-button">
                  
                 </div>
             </div>--%>
         </div>
     </div>
     <div class="background-content page-enter-animated">
         <div class="level-1">
             <div class="bg-overlay"></div>
             <div class="bg-pattern"></div>
             <div id="canvas">
                 <canvas class="bg-effect layer" data-depth="0.2"></canvas>
             </div>
         </div>
         <div class="level-2">
             <div class="bg-image layer" data-depth="0.04"></div>
             <div class="bg-video layer" data-depth="0.04"></div>
             <div class="bg-color layer" data-depth="0.04"></div>
         </div>
     </div>
 </section>

            <div id="overlay">
       <%-- <section class="overlay">
            <div class="content" id="about">
                <div class="container-mid">
                    <div class="container">
                        <h1>OUR WEBSITE IS COMING SOON</h1>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu,</p>
                        <form action="assets/php/subscribe.php" class="subscribe-form" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="input-group input-group-lg">
                                        <input class="email form-control" name="email" placeholder="* Enter your email to Subscribe!" type="text">
                                        <div class="fhp-input">
                                            <input class="email form-control" name="phone" placeholder="* Enter your phone to Subscribe!" type="text">
                                        </div>
                                        <div class="input-group-btn">
                                            <button class="btn btn-primary form-control" type="submit"><i class="ti-arrow-right first"></i><i class="ti-arrow-right second"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <ul class="social-icons">
                            <li>
                                <a class="ti-facebook" data-placement="bottom" href="#" title="Facebook">
                                    <div class="overlay"></div>
                                </a>
                            </li>
                            <li>
                                <a class="ti-twitter-alt" data-placement="bottom" href="#" title="Twitter">
                                    <div class="overlay"></div>
                                </a>
                            </li>
                            <li>
                                <a class="ti-google" data-placement="bottom" href="#" title="Google+">
                                    <div class="overlay"></div>
                                </a>
                            </li>
                            <li>
                                <a class="fa fa-envelope go-down" data-placement="bottom" href="#" title="Contact">
                                    <div class="overlay"></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>--%>
   <%--     <section class="overlay">
            <div class="content" id="contact">
                <div class="container-mid">
                    <div class="container">
                        <h1>Contact</h1>
                        <p>Want to say hello? Want to know more about us? Drop us an email and we will get back to you as soon as we can.</p>
                        <form action="assets/php/contact.php" id="contact-form" method="post" name="contact-form">
                            <div class="control-group">
                                <label class="nameLabel">Name</label> <input class="form-control" id="contact-form-name" name="name" type="text">
                            </div>
                            <div class="control-group">
                                <label class="emailLabel">Email</label> <input class="form-control" id="contact-form-email" name="email" type="text">
                            </div>
                            <div class="control-group fhp-input">
                                <label class="phoneLabel">Phone</label> <input class="form-control" id="contact-form-phone" name="phone" type="phone">
                            </div>
                            <div class="control-group">
                                <label class="messageLabel">Message</label>
                                <textarea class="form-control" id="contact-form-message" name="message"></textarea>
                            </div>
                            <div class="control-group">
                                <button class="form-control" type="submit"><i class="ti-arrow-right first"></i> <i class="ti-arrow-right second"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>--%>
        <div class="up-button go-up">
            <i class="ti-arrow-up"></i><i class="ti-arrow-up"></i>
        </div>
    </div>
</div>
<script src="assets/js/xsg235t4r1r.js" type="text/javascript">
</script>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
