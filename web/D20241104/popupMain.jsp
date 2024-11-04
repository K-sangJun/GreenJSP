<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String popupMode = "on";

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();

            if (cookieName.equals("PopupClose")) {
                popupMode = cookieValue;
            }
        }
    }
%>
<html>
    <head>
        <title>PopupMain</title>
        <style>
            div#popup {
                position: absolute;
                top: 100px;
                left: 50px;
                color: yellow;
                width: 270px;
                height: 100px;
                background-color: gray;

            }

            div#popup > div {
                position: relative;
                background-color: #ffffff;
                top: 0;
                border: 1px solid gray;
                color: black;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h2>팝업 메인페이지</h2>
        <%
            for (int i = 0; i < 10; i++) {
                out.println("현재팝업창은 " + popupMode + " 상태입니다.<br>");
            }

            if (popupMode.equals("on")) {
        %>

        <div id="popup">
            <h2 align="center">공지사항 팝업입니다.</h2>
            <div align="right">
                <form name="popFrm">
                    <input type="checkbox" id="inactiveToday" value="1"> 하루동안 열지않음
                    <input type="button" value="닫기" id="closeBtn">
                </form>
            </div>
        </div>
        <%
            }
        %>
    </body>
</html>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
    $(function () {
        $(document).on("click", "#closeBtn", function () {  //닫기버튼 클릭하면
            $("#popup").hide();                             //팝업을 숨김처리

            var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();//체크박스 체크여부 가져오깅
            if (chkVal == "1") {
                $.ajax({
                    url: "popupCookie.jsp",
                    type: "GET",
                    data: {
                        inactiveToday: chkVal
                    },
                    dataType: "text",
                    success: function (res) { //요청 성공 시 호출되는 함수
                        res = JSON.parse(res);

                        if (res.result) {
                            alert(res.message);
                            location.reload();
                        }
                    },
                });
            }
        });


    });
</script>
