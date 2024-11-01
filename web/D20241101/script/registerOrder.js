$(function () {

    document.querySelector("#sub-btn").addEventListener("click", function () {

        let param = {
            ORDERNO: document.querySelector("input[name=ORDERNO]").value,
            SHOPNO: document.querySelector("select[name=SHOPNO]").value,
            ORDERDATE: document.querySelector("input[name=ORDERDATE]").value,
            PCODE: document.querySelector("select[name=PCODE]").value,
            AMOUNT: document.querySelector("input[name=AMOUNT]").value
        }

        const requireds = document.querySelectorAll(".required");

        for (let required of requireds){
            if (required.value == ""){
                required.focus();
                alert(required.dataset.name);
                return;
            }
        }

        axios.post('/registerOrder', param, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        })
            .then((response) => {
                if (response.data >= 1){
                    alert("저장하였습니다.");
                    location.href = "/D20241101/orderList.jsp";
                }else{
                    alert("저장에 실패하였습니다.");
                }
            })
            .catch((error) => {
                console.log(error);
            });

    });

    document.querySelector("#reset-btn").addEventListener("click", function () {

        location.href = "/D20241101/registerOrder.jsp";

    });

});