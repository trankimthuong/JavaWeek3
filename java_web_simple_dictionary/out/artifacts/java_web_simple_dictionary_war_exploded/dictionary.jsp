<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 19/09/2019
  Time: 3:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
        Map<String, String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello", "xin chao");
        dic.put("how", "the nao");
        dic.put("book", "sach");
        dic.put("computer", "may tinh");
        String search = request.getParameter("txtSearch");

        String result = dic.get(search);
        if(result != null){
            out.println("Word: " + search);
            out.println("Result: " + result);
        }else{
            out.println("Not found");
        }
    %>
</body>
</html>
