<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-06
  Time: 오전 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("id") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <title>Title</title>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        .popup{
            display: none;
        }
        .popup.on {
            position: absolute;
            top: 0;
            width: 100%;
            height: 100vh;
            background-color: rgba(119, 119, 119, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .popup-wrap {
            width: 70%;
            height: 50%;
            top: 20%;
            background: white;
            border: 1px solid gray;
            border-radius: 20px;
        }

        .popup-title {
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            font-weight: bold;
            width: 100%;
            height: 20%;
        }

        .popup-detail {
            overflow-y: scroll;
            width: 100%;
            height: 60%;
        }

        .popup-btn {
            width: 100%;
            height: 20%;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .popup-btn a {
            display: flex;
            text-align: center;
            align-items: center;
            justify-content: center;
            justify-items: center;
            border: 1px solid black;
            cursor: pointer;
            width: 40%;
            height: 80%;
        }
    </style>
    <body>
        <div>
            ${sessionScope.id}님 반갑습니다.
        </div>
        <div id="time" style="font-size: 3rem; font-weight: bold; color: red">
        </div>
        <div class="popup">
            <div class="popup-wrap">
                <div class="popup-title">
                    세션을 유지 하시겠습니까?
                </div>
                <div class="popup-detail">
                    세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?세션을 유지 하사겠습니까?
                </div>
                <div class="popup-btn">
                    <a id="y-btn">예</a>
                    <a id="n-btn">아니요</a>
                </div>
            </div>
        </div>
    </body>
</html>

<script>

    $(function () {

        let count;
        let interval;
        strIntarval();

        document.querySelector("#n-btn").addEventListener("click", function (){
            invalidateSess();
            location.reload();
        });

        document.querySelector("#y-btn").addEventListener("click", function (){
            strIntarval();
            document.querySelector(".popup").classList.remove("on");
        });

        function strIntarval() {
            count = 10;
            interval = setInterval(function () {
                count--;
                document.querySelector("#time").innerHTML = count;
                if (count == 0) {
                    document.querySelector(".popup").classList.add("on");
                    clearInterval(interval);
                }
            }, 1000);
        }

        function invalidateSess() {
            let param = {};
            axios.post('/invalidateSess', param, {
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then((res) => {
                console.log(res);
            }).catch((error) => {
                console.log(error);
            });
        }


    });

</script>
