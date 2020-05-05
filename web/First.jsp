<%-- 
    Document   : First
    Created on : 1 Sep, 2019, 10:44:57 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image: url("img/bg-1.jpg");
            opacity: 0.95;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            padding-top: 60px; 
            margin: 0 auto;
            max-width: 400px;
            font-family: Verdana;
            font-size: 20px;
        }
        button{
            background-color: #dc2430;
            color: white;
            padding: 20px 20px;
            margin: 18px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
            border-radius: 5px;
        }
        button:hover {
            opacity: 1;
        }
        .White {
            color: #FFF;
        } 
    </style>
    <body>
        <center>
        <p class="White"><%
            out.println("Your name is :");
            String nn = request.getParameter("a1");
            out.println(nn);
            %><br><br>
            <%
            out.println("E-mail id is :");
            String mm = request.getParameter("a2");
            out.println(mm);
            %><br><br>
            <%
            out.println("Message :");
            String kk = request.getParameter("a3");
            out.println(kk);
            %><br><br>
        </p>
        
        <form action="GuestReg.html">
            <button type="submit"><b>More Entries</b></button>
        </form> 
        </center>
    </body>
</html>