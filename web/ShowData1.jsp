<%-- 
    Document   : JSTLSqlDemo
    Created on : 3 Sep, 2019, 8:46:09 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>------Booked Guests------</title>
    </head>
    <style>
        body{
            background-image: url("img/bg-1.jpg");
            opacity: 0.95;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0 auto;
            max-width: 600px;
            font-family: Helvetica;
            font-size: 20px;
            overflow-y: hidden;
        }
        button{
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 70%;
            opacity: 0.9;
            border-radius: 5px;
        }
        button:hover {
            opacity: 1;
        }
        th {
            height: 40px;
            font-weight: bold;
            border: 2px solid #000000;
        }
        td{
            height: 20px;
            border: 2px solid #696969;
            text-align: center;
        }
        table{
            
            width: 600px;
            border-collapse: collapse;
        }
        .White {
            color: #ddd;
        }
        </style>
    <body>
        <center>
            <div class="container White">
            <sql:setDataSource var="xyz"
                               driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost:3306/guestbook"
                               user="root"
                               password="harshit" />
            <sql:query dataSource="${xyz}" var ="result">
                select * from gdetails;
            </sql:query>
                <table border="1" width="100%" >
                    <tr>
                        <th>
                            name
                        </th>
                        <th>
                            email
                        </th>
                        <th>
                            msg
                        </th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td> <c:out value="${row.name}"/></td>
                            <td> <c:out value="${row.email}"/></td>
                            <td> <c:out value="${row.msg}"/></td>
                    </c:forEach>
                </table>
                <form action="HandleDB.html">
                    <button type="submit"><b>Go Back</b></button>
                </form>
            </div>
        </center>
    </body>
</html>
