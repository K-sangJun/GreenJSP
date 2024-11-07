<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-05
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Title</title>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <style>
        table {
            width: 100%;
            border: 1px solid rebeccapurple;
            table-layout: fixed; /* 고정 레이아웃으로 설정 */
        }

        img {
            width: 110px;
            height: 110px;
        }

        td {
            text-align: center;
            border: 1px solid rebeccapurple;
            width: 100px;
            height: 50px;
            white-space: nowrap; /* 텍스트를 한 줄로 유지 */
            overflow: hidden; /* 넘치는 텍스트 숨기기 */
            text-overflow: ellipsis; /* 말줄임표(...) 표시 */
        }
    </style>
    <body>
        <table>
            <thead>
                <tr>
                    <td>DOJIJUNG_NO</td>
                    <td>MYONGCHING</td>
                    <td>MYONGCHING_HANMUN</td>
                    <td>CONTENT</td>
                    <td>MYONJUK</td>
                    <td>SOYOUJA_NAME</td>
                    <td>ADMIN_NAME</td>
                    <td>SIDAE</td>
                    <td>JIJUNG_DATE</td>
                    <td>ADDRESS1</td>
                    <td>UTMK_X</td>
                    <td>UTMK_Y</td>
                    <td>fileurl1</td>
                    <td>fileurl2</td>
                    <td>fileurl3</td>
                </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
        </table>
    </body>
</html>

<script>

    $(function () {

        let param = {};

        axios.post('/restApi', param, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then((res) => {
            let datas = res.data.gyeongnamculturallist.body.items.item;

            for (let data of datas) { //tr그리기
                let html = "<tr>";

                for (let key of Object.keys(data)) { //key 반복
                    data[key] = data[key] ?? "-";

                    if (key != "fileurl1" && key != "fileurl2" && key != "fileurl3") { //파일일떄 구분
                        html += `<td data-key="`+ key +`" title="` + data[key] + `">` + data[key] + `</td>`;
                    } else {
                        html += `<td><img data-key="`+ key +`" src="` + data[key] + `" onerror="this.src='https://cdn.mariooutlet.com/Product/A0462/B6W/P000733796_d1.jpg'"></td>`;
                    }
                }

                html += "</tr>"; //닫기

                document.querySelector("#tbody").innerHTML += html; //넣기
            }

        }).catch((error) => {
            console.log(error);
        });

        $(document).on("click", "tbody tr", function (){
            const tr = $(this)[0];

            let html = `<form method="post" action="/D20241105/restDetail.jsp" style="display: none">`
            let childrens = tr.childNodes;

            for (let idx in childrens){
                if (idx >= 12){
                    html += `<input type="hidden" name="`+ childrens[idx].childNodes[0].dataset.key +`" value="`+ childrens[idx].childNodes[0].src +`">`
                }else if (idx <= 11){
                    html += `<input type="hidden" name="`+ childrens[idx].dataset.key +`" value="`+ childrens[idx].innerHTML +`">`
                }
            }

            html += `</form>`;
            document.querySelector("body").innerHTML += html;

            document.querySelector("form").submit();
            document.querySelector("form").remove();
        })

    });

</script>