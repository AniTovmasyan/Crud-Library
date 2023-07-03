<%@ page import="am.nuaca.BookDAO" %>
<%@ page import="am.nuaca.MyList"%>
<%@ page import="java.util.*" %>
<%--


  Created by IntelliJ IDEA.
  User: User
  Date: 2/15/2023
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet"/>
    <script src="../js/javascript.js"></script>
</head>
<body>

<div id="content">

    <div class="header">Header </div>
    <div class="left">
        <%

        %>

    </div>
        <div class="right-1">
            <p class="title">
        <%

        %></p>1</div>
    <div class="right-2">
        <p class="book">
        <%

        %>


        </p>2</div>

    <div class="right-3">3
        <br>
        <%
            Set<Integer> set = new HashSet<>();
            set.add(5);
            set.add(8);
            set.add(10);
            set.add(5);
            set.add(12);
            out.print(set);

        %>
    </div>
    <div class="right-4">4

        <br>
        <%
        Map<Integer, String> map = new TreeMap<>();
        map.put(5, "A");
        map.put(3, "C");
        map.put(2, "D");
        map.put(4, "B");
        map.put(1, "A");
        out.print(map);
        %>
    </div>
    <div class="footer">Footer</div>

</div>
</body>


</body>
</html>
