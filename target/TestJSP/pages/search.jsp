
<%@ page import="am.nuaca.orm.BookDAO" %>
<%@ page import="am.nuaca.orm.Book" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/10/2023
  Time: 1:44 PM
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
  int numid1 = Integer.parseInt(id);

  BookDAO bookDAO = new BookDAO();
  Book s = bookDAO.searchBook(numid1);
  out.print(s);
%>
</body>
</html>
