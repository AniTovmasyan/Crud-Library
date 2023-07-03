<%@ page import="am.nuaca.orm.StudentDAO" %>
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
    String id = request.getParameter("bookid");
    int numid = Integer.parseInt(id);
    String author = request.getParameter("author");
    BookDAO bookDAO = new BookDAO();
    bookDAO.updateBook(numid, author);
    out.print(author);
%>
</body>
</html>
