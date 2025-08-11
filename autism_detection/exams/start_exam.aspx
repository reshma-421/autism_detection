<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start_exam.aspx.cs" Inherits="autism_detection.exams.start_exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-- fonts -->
    <link rel="stylesheet" href="assets/fonts/font.css">

    <!-- fontawesome 5 -->
    <link rel="stylesheet" href="../../../ajax/libs/font-awesome/6.2.1/css/all.min-1.css">

    <!-- bootstrap 5 -->
    <link rel="stylesheet" href="assets/css/Bootstrap/bootstrap.min.css">

    <!-- Custom Css Files -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/css/animation.css">
    
    <!-- result css -->
    <link rel="stylesheet" href="assets/css/result_style.css">
</head>
<body>
     <main class="overflow-hidden">
     <div class="timer">
         <div class="timer-inner">
             <div class="timer-count">
                 <span id="countdown-timer">90</span>
                 sec
             </div>
         </div>
     </div>
     <div class="container">
         <div class="step-count">
             <span id="activeStep">1</span>/10 Question
         </div>
 
         <header class="step-bar">
             <div class="fill"></div>
         </header>
        
             
    <form id="form1" runat="server" class="show-section">

            <%-- <!-- step 1 -->
             <section class="steps">
                 <div class="step-inner">

                     <!-- question -->
                     <div class="quiz-question">
                         Who is Anakin Skywalker when he  Goes to the Dark Side?
                     </div>

                     <!-- form -->
                     <fieldset id="step1">
                         <div class="input-field">
                             <div class="option">
                                 A
                             </div>
                             <div class="radio-field bounce-left">
                                 <input type="radio" name="op1" value="Drath Sidious">
                                 <label>Drath Sidious</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 B
                             </div>
                             <div class="radio-field bounce-left delay-100">
                                 <input type="radio" name="op1" value="Darth Tyannus">
                                 <label>Darth Tyannus</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 C
                             </div>
                             <div class="radio-field bounce-left delay-200">
                                 <input type="radio" name="op1" value="Drath Sidious">
                                 <label>Drath Sidious</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 D
                             </div>
                             <div class="radio-field bounce-left delay-300">
                                 <input type="radio" name="op1" value="Darth Maul">
                                 <label>Darth Maul</label>
                             </div>
                         </div>
                     </fieldset>
                     <img class="thinking_bro" src="assets/images/Manthinking-bro.png" alt="thinking-bro">
                 </div>

                 <!-- next previous -->
                 <div class="next-prev">
                     <button class="next" type="button" id="step1btn">next question<i class="fa-solid fa-arrow-right"></i></button>
                 </div>
             </section>--%>


        <asp:Repeater ID="rptrautism" runat="server">

    <ItemTemplate>
             <!-- step 2 -->
             <section class="steps">
                 <div class="step-inner">
                     <img class="thinking_bro" src="assets/images/t1.png" style= " width:50%;height:100%" alt="thinking-bro">
                     <!-- question -->
                     <div class="quiz-question">
                         <%# Eval("Questions") %>?
                     </div>

                     <!-- form -->
                     <fieldset id="step<%# Eval("#") %>">
                         <div class="input-field">
                             <div class="option">
                                 A
                             </div>
                             <div class="radio-field bounce-left">
                                 <input type="radio" name="op2" value="<%# Eval("Option 1") %>">
                                 <label><%# Eval("Option 1") %></label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 B
                             </div>
                             <div class="radio-field bounce-left delay-100">
                                 <input type="radio" name="op2" value="<%# Eval("Option 2") %>">
                                 <label><%# Eval("Option 2") %></label>
                             </div>
                         </div>
                         
                     </fieldset>
                     
                 </div>

                 <!-- next previous -->
                 <div class="next-prev">
                     <%--<button class="prev" type="button"><i class="fa-solid fa-arrow-left"></i>last question</button>--%>
                    
                     <%--<asp:Button ID="Button2" OnClick="Button2_Click" Visible=" <%# (string)Eval("#") == "10" ? true : false %>" class="next" runat="server" Text="Button" />--%>
<%--                       <%# (string)Eval("#") == "10" ? "<a href='../rslt/result.aspx?a=" + Request.QueryString["cat"].ToString() +"' class=\"btn btn-primary\">Submit Exam</a>"  : " <button class='next' type='button' id='step"+Eval("#") +"btn'>next question<i class='fa-solid fa-arrow-right'></i></button>" %>--%>
                                     <%# (string)Eval("#") == "10" 
                    ? "<button class='next' type='submit' formaction='../rslt/result.aspx?a=" + 
                      Request.QueryString["cat"].ToString() + "'>Submit<i class=\"fa-solid fa-arrow-right\"></i></button>" 
                    : "<button class='next' type='button' id='step" + Eval("#") + "btn'>next question<i class='fa-solid fa-arrow-right'></i></button>" %>

                 </div>
             </section>

            </ItemTemplate>


</asp:Repeater>
        </form>
<%--             <!-- step 3 -->
             <section class="steps">
                 <div class="step-inner">

                     <!-- question -->
                     <div class="quiz-question">
                         The logo For Luxury Car Maker Porsche Features Which Animal?
                     </div>

                     <!-- form -->
                     <fieldset id="step3">
                         <div class="input-field">
                             <div class="option">
                                 A
                             </div>
                             <div class="radio-field bounce-left">
                                 <input type="radio" name="op3" value="dog">
                                 <label>dog</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 B
                             </div>
                             <div class="radio-field bounce-left delay-100">
                                 <input type="radio" name="op3" value="tiger">
                                 <label>tiger</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 C
                             </div>
                             <div class="radio-field bounce-left delay-200">
                                 <input type="radio" name="op3" value="cat">
                                 <label>cat</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 D
                             </div>
                             <div class="radio-field bounce-left delay-300">
                                 <input type="radio" name="op3" value="horse">
                                 <label>horse</label>
                             </div>
                         </div>
                     </fieldset>
                     <img class="thinking_bro" src="assets/images/Manthinking-bro.png" alt="thinking-bro">
                 </div>

                 <!-- next previous -->
                 <div class="next-prev">
                     <button class="prev" type="button"><i class="fa-solid fa-arrow-left"></i>last question</button>
                     <button class="next" type="button" id="step3btn">Next Question<i class="fa-solid fa-arrow-right"></i></button>
                 </div>
             </section>

             <!-- step 4 -->
             <section class="steps">
                 <div class="step-inner">

                     <!-- question -->
                     <div class="quiz-question">
                         Who is Anakin Skywalker when he  Goes to the Dark Side?
                     </div>

                     <!-- form -->
                     <fieldset id="step4">
                         <div class="input-field">
                             <div class="option">
                                 A
                             </div>
                             <div class="radio-field bounce-left">
                                 <input type="radio" name="op4" value="Drath Sidious">
                                 <label>Drath Sidious</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 B
                             </div>
                             <div class="radio-field bounce-left delay-100">
                                 <input type="radio" name="op4" value="Darth Tyannus">
                                 <label>Darth Tyannus</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 C
                             </div>
                             <div class="radio-field bounce-left delay-200">
                                 <input type="radio" name="op4" value="Drath Sidious">
                                 <label>Drath Sidious</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 D
                             </div>
                             <div class="radio-field bounce-left delay-300">
                                 <input type="radio" name="op4" value="Darth Maul">
                                 <label>Darth Maul</label>
                             </div>
                         </div>
                     </fieldset>
                     <img class="thinking_bro" src="assets/images/Manthinking-bro.png" alt="thinking-bro">
                 </div>

                 <!-- next previous -->
                 <div class="next-prev">
                     <button class="prev" type="button"><i class="fa-solid fa-arrow-left"></i>last question</button>
                     <button class="next" type="button" id="step4btn">next question<i class="fa-solid fa-arrow-right"></i></button>
                 </div>
             </section>

             <!-- step 5 -->
             <section class="steps">
                 <div class="step-inner">

                     <!-- question -->
                     <div class="quiz-question">
                         The logo For Luxury Car Maker Porsche Features Which Animal?
                     </div>

                     <!-- form -->
                     <fieldset id="step5">
                         <div class="input-field">
                             <div class="option">
                                 A
                             </div>
                             <div class="radio-field bounce-left">
                                 <input type="radio" name="op1" value="dog">
                                 <label>dog</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 B
                             </div>
                             <div class="radio-field bounce-left delay-100">
                                 <input type="radio" name="op5" value="tiger">
                                 <label>tiger</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 C
                             </div>
                             <div class="radio-field bounce-left delay-200">
                                 <input type="radio" name="op5" value="cat">
                                 <label>cat</label>
                             </div>
                         </div>
                         <div class="input-field">
                             <div class="option">
                                 D
                             </div>
                             <div class="radio-field bounce-left delay-300">
                                 <input type="radio" name="op5" value="horse">
                                 <label>horse</label>
                             </div>
                         </div>
                     </fieldset>
                     <img class="thinking_bro" src="assets/images/Manthinking-bro.png" alt="thinking-bro">
                 </div>

                 <!-- next previous -->
                 <div class="next-prev">
                     <button class="prev" type="button"><i class="fa-solid fa-arrow-left"></i>last question</button>
                     <button class="next" type="button" id="sub">Submit<i class="fa-solid fa-arrow-right"></i></button>
                 </div>
             </section>--%>
         
     </div>
     
     <!-- result -->
     <div class="loadingresult">
         <img src="assets/images/loading.gif" alt="loading">
     </div>
     <div class="result_page">
         <div class="container">
             <div class="result_inner">

                 <!-- header -->
                 <header class="resultheader">
                     Your Result is there
                     <div class="h-border"></div>
                 </header>
   
                 <div class="result_content">
                     <div class="result_msg">
                         <img src="assets/images/check.png" alt="check">
                         Thanks for your Answers
                     </div>
                     <span>Result is get you as soon as possible</span>
                    
                 </div>

                 <footer class="resultfooter"></footer>

             </div>
         </div>
     </div>

         
 </main>

 <div id="error"></div>

 <!-- bootstrap 5 -->
 <script src="assets/js/Bootstrap/bootstrap.min.js"></script>

 <!-- jQuery -->
 <script src="assets/js/jQuery/jquery-3.6.3.min.js"></script>
 
 <!-- result js -->
 <script src="assets/js/result.js"></script>

 <!-- Custom js -->
 <script src="assets/js/custom.js"></script>
    
</body>
</html>
