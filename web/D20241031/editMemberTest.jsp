<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-31
  Time: 오전 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/D20241031/css/registerMemberTest.css">

<jsp:include page="layout/header.jsp" />
<jsp:include page="layout/menu.jsp" />

<section>
    <h1 style="text-align: center">홈쇼핑 회원 정보 수정</h1>
    <form id="frm" method="post" action="/editMemberTestServlet">
        <div class="wrap">
            <div class="sub-wrap">
                <div class="title">
                    <label>회원번호(자동발생)</label>
                </div>
                <div class="input">
                    <input type="text" name="custno" readonly value="${requestScope.member.custno}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원성명</label>
                </div>
                <div class="input">
                    <input type="text" name="custname" maxlength="20" class="required" data-name="회원성명" value="${requestScope.member.custname}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원전화</label>
                </div>
                <div class="input">
                    <input type="text" name="phone" maxlength="13" class="required" data-name="회원전화" value="${requestScope.member.phone}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>회원주소</label>
                </div>
                <div class="input">
                    <input type="text" name="address" maxlength="60" class="required" data-name="회원주소" value="${requestScope.member.address}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>가입일자</label>
                </div>
                <div class="input">
                    <input type="date" name="joindate" class="required" data-name="가입일자" value="${requestScope.member.joindate}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>고객등급[A:VIP, B:일반, C:직원]</label>
                </div>
                <div class="input">
                    <input type="text" name="grade" maxlength="1" class="required" data-name="고객등급" value="${requestScope.member.grade}">
                </div>
            </div>
            <div class="sub-wrap">
                <div class="title">
                    <label>도시코드</label>
                </div>
                <div class="input">
                    <input type="text" name="city" maxlength="2" class="required" data-name="도시" value="${requestScope.member.city}">
                </div>
            </div>
            <div class="sub-wrap" style="justify-content: center">
                <input type="submit" value="수정" id="sub-btn">
                <input type="button" value="조회" id="sel-btn" onclick="location.href='/getAllMemberTest'">
            </div>
        </div>
    </form>
</section>
<jsp:include page="layout/footer.jsp" />

<script>

    document.querySelector("#sub-btn").addEventListener("click", function (e){
        e.preventDefault();
        const requireds = document.querySelectorAll(".required");

        for (let required of requireds){
            if (required.value == ""){
                required.focus();
                alert(required.dataset.name + "를 입력해 주세요");
                return;
            }

            if (required.name == "grade"){
                if (required.value.toUpperCase() != "A" && required.value.toUpperCase() != "B" && required.value.toUpperCase() != "C"){
                    required.focus();
                    alert("고객등급은 A, B, C 만 입력할 수 있습니다.");
                    return;
                }
            }
        }

        document.querySelector("#frm").submit();
    });

</script>


