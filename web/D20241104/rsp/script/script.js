$(function(){

    let rsp = ["/D20241104/rsp/img/R.jpg", "/D20241104/rsp/img/S.png", "/D20241104/rsp/img/P.jpg"];
    let runStop = "S";
    let computer = -1;
    let user = -1;

    // 승, 패, 무
    let per = {w: 0, l:0, d:0};

    $(document).on("click", "#start", function(){
        if(runStop == "S"){
            displayBtn(true);
            computer = getComputer();
        }
    });

    $(document).on("click", "#end", function(){
        if(runStop == "R"){
            document.getElementsByClassName("end-btn")[0].classList.remove('on');
            document.getElementsByClassName("start-btn")[0].classList.add('on');
            document.getElementById("result").textContent = "시작을 눌러주세요";
            document.getElementById("computer-img").src = "/D20241104/rsp/img/load.gif";
            document.getElementById("user-img").src = "/D20241104/rsp/img/load.gif";
            computer = -1;
            user = -1;
            runStop = "S";
            document.getElementById("per").textContent = "";
        }
    });

    $(document).on("click", "#addScore", function (){
        axios.post('/rsp', per, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then((response) => {

            location.href = "/D20241104/rsp/rsp.jsp";

        }).catch((error) => {
            console.log(error);
        });
    })

    $(document).on("click", ".rsp-btn", function(){
        user = runStop == "R" ? $(this)[0].dataset.rsp : -1;
        document.getElementsByClassName("start-btn")[0].classList.add('on');
        doCacl();
    });

    function doCacl(){
        let text = "";
        let outcome = (user - computer + 3) % 3;
        document.getElementById("computer-img").src = rsp[computer];
        document.getElementById("user-img").src = rsp[user];
        if (outcome === 0) {
            per['d']++;
            text = "비겼습니다.";
        } else if (outcome === 1) {
            per['l']++;
            text = "패배하였습니다.";
        } else {
            per['w']++;
            text = "승리하였습니다";
        }


        document.getElementsByClassName("end-btn")[0].classList.add('on');
        document.getElementsByClassName("start-btn")[0].classList.remove('on');
        document.getElementsByClassName("rsp-btn")[0].classList.remove('on');
        document.getElementsByClassName("rsp-btn")[1].classList.remove('on');
        document.getElementsByClassName("rsp-btn")[2].classList.remove('on');

        document.getElementById("result").textContent = text;
        document.getElementById("per").textContent = "승: " + per['w'] + ", 패: " + per['l'] + ", 무: " + per['d'];
    }

    function getComputer(){
        return Math.floor(Math.random() * 3);
    }

    function displayBtn(startYn){

        if(startYn){
            runStop = "R";
            document.getElementById("result").textContent = "가위, 바위, 보 중 선택해 주세요.";
            document.getElementsByClassName("start-btn")[0].classList.remove('on');
            document.getElementsByClassName("end-btn")[0].classList.remove('on');
            document.getElementsByClassName("rsp-btn")[0].classList.add('on');
            document.getElementsByClassName("rsp-btn")[1].classList.add('on');
            document.getElementsByClassName("rsp-btn")[2].classList.add('on');
        }else{
            runStop = "S";
            document.getElementsByClassName("start-btn")[0].classList.add('on');
            document.getElementsByClassName("end-btn")[0].classList.remove('on');
            document.getElementsByClassName("rsp-btn")[0].classList.remove('on');
            document.getElementsByClassName("rsp-btn")[1].classList.remove('on');
            document.getElementsByClassName("rsp-btn")[2].classList.remove('on');
        }
    }

});