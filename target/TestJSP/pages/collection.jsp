
  Created by IntelliJ IDEA.
  User: User
  Date: 2/15/2023
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
  <%@ page import="am.nuaca.MyList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="../css/colstyle.css" rel="stylesheet"/>
    <script src="../js/javascript.js"></script>
</head>
<body>

<div id="content">

    <div class="header">Header </div>
    <div class="left">
        <p class="list">


<%
    MyList myList = new MyList();
    myList.listNumber();
    out.print(myList.listNumber());
    out.print("<br>");
    for (int i = 0; i < myList.listNumber().size(); i++) {
        int r = (int)(Math.random()*255);
        int g = (int)(Math.random()*255);
        int b = (int)(Math.random()*255);
        int s = (int)(10+Math.random()*25);

        out.print("<span style=font-size:"+s+";color:rgb("+r+","+g+","+b+")>"+myList.listNumber().get(i)+" "+"</span>");

    }
    out.print("<br>");
    //out.print(myList.listSum());
%></p>

    </div>
        <div class="right-1">
<%--            <p class="title">--%>
<%--        <%--%>
<%--            BookDAO dao = new BookDAO();--%>
<%--            dao.fillBooks();--%>
<%--            out.print(dao.printBooks());--%>
<%--        %></p>1</div>--%>
    </div>
    <div class="right-2">
        <p class="book">
<%--        <%--%>
<%--            BookDAO dao2 = new BookDAO();--%>
<%--            dao2.fillBooks();--%>
<%--            out.print( dao2.printJava());--%>

<%--        %>--%>
        </p>2</div>
    <div class="right-3">3</div>
    <div class="right-4">4</div>
    <div class="footer">Footer</div>
</div>
</body>


</body>
</html>
