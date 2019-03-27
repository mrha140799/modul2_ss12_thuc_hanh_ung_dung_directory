<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: TrongHa
  Date: 3/27/2019
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Directory</title>
  </head>
  <body>
  <form  action="index.jsp" method="post">
  <div>
    <input type="text" id="idText" height="150px" width="15px" style="border: 1px #CCC solid">
    <input type="submit" value="Translate">
  </div>
  </form>

  <%
    Map<String , String> dic = new HashMap<>();
    dic.put("Hello" , "Xin chào");
    dic.put("Dog" , "Chó");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("idText");
    String rel = dic.get(search);
    if (rel != null) {
      out.println("Word: " + search);
      out.println("Result: " + rel);
    } else {
      out.println("Not found");
    }
  %>
  </body>
</html>
