
<%@ page import="am.nuaca.orm.Book" %>
<%@ page import="am.nuaca.orm.BookDAO" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/3/2023
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    int numid = Integer.parseInt(id);
    BookDAO bookDAO = new BookDAO();
    bookDAO.deleteBook(numid);
%>
</body>
</html>
