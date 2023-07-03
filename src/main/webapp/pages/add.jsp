<%@ page import="am.nuaca.orm.Book" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="am.nuaca.orm.BookDAO" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/3/2023
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
   String name = request.getParameter("name");
   String author = request.getParameter("author");
   String date = request.getParameter("date");
   Book book = new Book(name, author, date);
   out.print(name +" " + author + " " + date);

  Book book1 = new Book(name, author,date);


   BookDAO bookDAO = new BookDAO();
   bookDAO.insert(book);

%>
</body>
</html>
