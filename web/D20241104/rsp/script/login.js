$(function () {
    let chk = false;
    document.querySelector("#login-chk-btn").addEventListener("click", function () {

        let param = {
            id: document.querySelector("input[name=id]").value,
            type: "chk"
        }

        axios.post('/rspLogin', param, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then((response) => {

            if (response.data >= 0) {
                // location.href = "/D20241104/rsp/rsp.jsp";
                alert("사용가능한 ID 입니다.")
                chk = true;
            } else {
                alert("사용중인 ID 입니다.");
                chk = false;
            }

        }).catch((error) => {
            console.log(error);
        });

    });

    document.querySelector("#login-btn").addEventListener("click", function () {

        let param = {
            id: document.querySelector("input[name=id]").value,
            type: "login"
        }

        if (param.id == ""){
            alert("아이디를 입력하세요");
            return
        }

        if (!chk){
            alert("중복체크를 하세요");
            return
        }

        axios.post('/rspLogin', param, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then((response) => {

            location.href = "/D20241104/rsp/rsp.jsp";

        }).catch((error) => {
            console.log(error);
        });

    })


});