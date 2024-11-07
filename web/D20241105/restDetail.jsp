<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-05
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <style>
            * {
                padding: 10px;
                margin: 10px;
                font-size: 1.2rem;
            }

            div {
                border: 1px solid black;
                text-align: center;
            }

            img{
                width: 25vw;
                height: 50vh;
            }
        </style>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            Map<String, String[]> datas = (Map<String, String[]>) request.getParameterMap();

            for (String key : datas.keySet()) {
                String[] data = datas.get(key);

                for (int i = 0; i < data.length; i++) {

                    if (!key.equals("fileurl1") && !key.equals("fileurl2") && !key.equals("fileurl3")) { %>

        <div>
            <%= data[i]%>
        </div>

        <% } else {
            if (key.equals("fileurl1")) {
        %>

        <div>
            <%}%>
            <img onerror="this.src='https://cdn.mariooutlet.com/Product/A0462/B6W/P000733796_d1.jpg'"
                 src="<%= data[i]%>">

            <% if (key.equals("fileurl3")) {%>
        </div>
        <%
                        }
                    }
                }
            }
        %>

        <div style="border: 0; position: fixed; bottom: 10px; right: 10px;">
            <button onclick="history.back()" style="background-color: red; color: yellow">뒤로가기</button>
        </div>
    </body>
</html>
