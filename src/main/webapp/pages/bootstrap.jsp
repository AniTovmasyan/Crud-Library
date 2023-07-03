<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/15/2023
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="am.nuaca.MyList"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="am.nuaca.orm.BookDAO" %>
<%@ page import="am.nuaca.ConnectorDB" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="am.nuaca.orm.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 5 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <script src="../js/javascript.js"></script>
</head>
<body>

<div class="container-fluid p-5 bg-primary text-white text-center">

</div>

<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">



    </div>
    <div class="col-sm-4">


<%--      <p class = "bg-warning text-primary fs-1">--%>



<%--        MyList myList1 = new MyList();--%>
<%--        myList1.listNumber();--%>
<%--        out.print(myList1.listNumber());--%>
<%--        out.print("<br>");--%>

<%--        out.print("<br>");--%>
<%--        ArrayList<Integer> list = new ArrayList<>();--%>
<%--       list = myList1.listNumber();--%>
<%--        int sum = 0;--%>
<%--        for (int i = 0; i < list.size(); i++) {--%>
<%--         if (list.get(i) % 2 == 0) {--%>
<%--       sum += list.get(i);--%>
<%--       }--%>
<%--       }--%>
<%--     out.print(sum);--%>


<%--        <%--%>
<%--          BookDAO dao4 = new BookDAO();--%>
<%--          dao4.fillBooks();--%>
<%--          dao4.fillBookSet();--%>
<%--          out.print(dao4.printBooksSet());--%>
<%--        %>--%>

<%--      </p>--%>

<%--        <%--%>
<%--            ConnectorDB connectorDB = new ConnectorDB();--%>
<%--            Connection con = connectorDB.connectDB();--%>
<%--            Statement stmt = con.createStatement();--%>
<%--            ResultSet rs = stmt.executeQuery("select * from books");--%>

<%--            while(rs.next()){--%>
<%--                out.print(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + "<br>");--%>
<%--            }--%>
<%--            %>--%>
            <div class="main" onmouseover="table_Bacground1()" onmouseout="table_Bg1()">
            <div class="inner" style="font-size: 25px;" >
                <%
            BookDAO bookDAO = new BookDAO();
                    bookDAO.addBooks();
//            out.print(studentDAO.printStudents());
          ArrayList<Book>list = bookDAO.getBookList();

            out.print("<table id=\"tab1\" border=2px solid black>");
            for (int rows = 0; rows < list.size(); rows++) {
                out.print(" <tr> ");

                out.print(" <td style= padding:40px >" + list.get(rows).getBookid() + "</td> ");
                out.print(" <td style= padding:40px >" + list.get(rows).getName() + "</td> ");
                out.print(" <td style= padding:40px >" + list.get(rows).getAuthor() + "</td> ");
                out.print(" <td style= padding:40px >" + list.get(rows).getDate() + "</td> ");
                out.print(" </tr> ");

            }
            out.print("</table>");

                %>

            </div>
        </div>

    </div>
    <div class="col-sm-4" >

        <%

            out.print("<br>" + "<br>");
        %>
        <div class="main" onmouseover="table_Bacground()" onmouseout="table_Bg()">
            <div class="inner" style="font-size: 25px;" >
                <%


                %>

        </div>
    </div>
  </div>
</div>
</div>
</body>
</html>

