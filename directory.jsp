<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: TrongHa
  Date: 3/28/2019
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Directory</title>
</head>
<body>
<%!
    Map<String , String> dic = new HashMap<>();

%>
<%
    dic.put("Hello" , "Xin chào");
    dic.put("Dog" , "Chó");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("idText");
    String rel = dic.get(search);
    if (rel != null) {
        out.println("Word: " + search);
        out.println("-->Result: " + rel);
    } else {
        out.println("Not found");
    }
%>

</body>
</html>
