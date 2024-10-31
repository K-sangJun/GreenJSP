<%@ page import="D20241031.dao.MemberDao" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-31
  Time: 오전 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/registerMemberTest.css">
<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />
<%
    MemberDao dao = new MemberDao();
    int maxNum = dao.maxCustNo();
    Date now = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String nowDate = sdf.format(now);
%>
<section>
    <h1 style="text-align: center">홈쇼핑 회원 등록</h1>
    <form id="frm" method="post" action="/registerMemberTestServlet">
        <div class="wrap">
            <div class="sub-wrap">
                <div class="title">
                    <label>회원번호(자동발생)</label>
                </div>
                <div class="input">
                    <input type="text" name="custno" readonly value="<%= maxNum%>">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원성명</label>
                </div>
                <div class="input">
                    <input type="text" name="custname" maxlength="20" class="required" data-name="회원성명">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원전화</label>
                </div>
                <div class="input">
                    <input type="text" name="phone" maxlength="13" class="required" data-name="회원전화">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원주소</label>
                </div>
                <div class="input">
                    <input type="text" name="address" maxlength="60" class="required" data-name="회원주소">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>가입일자</label>
                </div>
                <div class="input">
                    <input type="date" name="joindate" class="required" data-name="가입일자" value="<%= nowDate%>">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>고객등급[A:VIP, B:일반, C:직원]</label>
                </div>
                <div class="input">
                    <input type="text" name="grade" maxlength="1" class="required" data-name="고객등급">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>도시코드</label>
                </div>
                <div class="input">
                    <input type="text" name="city" maxlength="2" class="required" data-name="도시">
                </div>
            </div>
            <div class="sub-wrap" style="justify-content: center">
                <input type="submit" value="등록" id="sub-btn">
                <input type="button" value="조회" id="sel-btn" onclick="location.href='/getAllMemberTest'">
            </div>
        </div>
    </form>
</section>
<jsp:include page="layout/footer.jsp" />

<script>
    $(document).ready(function () {
        document.querySelector("#sub-btn").addEventListener("click", function (e) {

            e.preventDefault();

            const requireds = document.querySelectorAll(".required");

            for (let required of requireds) {
                if (required.value == "") {
                    required.focus();
                    alert(required.dataset.name + "를 입력해 주세요");
                    return;
                }

                if (required.name == "grade") {
                    if (required.value.toUpperCase() != "A" && required.value.toUpperCase() != "B" && required.value.toUpperCase() != "C") {
                        required.focus();
                        alert("고객등급은 A, B, C 만 입력할 수 있습니다.");
                        return;
                    }
                }
            }

            let param = {
                "phone": document.querySelector("input[name=phone]").value
            }

            $.ajax({
                type: 'post',           // 타입 (get, post, put 등등)
                url: '/checkPhoneTest',           // 요청할 서버url
                dataType: 'text',       // 데이터 타입 (html, xml, json, text 등등)
                data: param,
                success: function (result) { // 결과 성공 콜백함수
                    console.log(result);
                    if (result <= 0) {
                        document.querySelector("#frm").submit();
                    } else {
                        alert("이미 존재하는 전화번호입니다.");
                    }
                },
                error: function (request, status, error) { // 결과 에러 콜백함수
                    console.log(error)
                }
            })

        });
    })

</script>


