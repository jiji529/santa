

        //'댓글 추가' 버튼
        let rvAddBtn = document.querySelector('#rvAdd');

        //리뷰추가 새 창
        let rvForm = document.querySelector('#rvForm');

        //리뷰 '확인' 버튼
        let rvSaveBtn = document.querySelector('#rvSave');

        //리뷰 '취소' 버튼
        let rvCancelBtn = document.querySelector('#rvCancel');

        //리뷰 이미지, 내용 넣는 태그 선택자
        let rvFormElm = document.querySelectorAll('#rvForm input[name="rvImg"], #rvForm input[name="rvContent"]');

        //사용자 계정(이메일)
        let rvConfirm = document.querySelector('#rvForm input[name="loginUserEmail"]');

        let br = document.querySelector('#bigReview');



        //리뷰 추가 템플릿 객체화
        let rt = document.querySelector('#rvTemp');
        
        rvAddBtn.onclick = function () {
            //console.log(rvConfirm.value);
            if(!rvConfirm.value) {
                alert('로그인 후 이용해주세요.');
                location.reload();
            } else {
                rvForm.classList.add('active');
            }
        };
        
        rvCancelBtn.onclick = function () {
            rvForm.classList.remove('active');
            rvFormElm.forEach(function(e){
                e.value = '';
            });
        };

        //사용자 -> 리뷰 입력값(.value로 꺼내쓰기)
        const pNo = document.querySelector("input[name='pNo']");
        const rvImg = document.querySelector("input[name='rvImg']");
        const rvContent = document.querySelector("input[name='rvContent']");

        rvSaveBtn.addEventListener("click", e => {

            const item = new FormData();        

            item.append("pNo", Number(pNo.value));
            item.append("rvImg", rvImg.files[0]);
            item.append("rvContent", rvContent.value);

            console.log();
            
            fetch("rvSave/ajax", {
                method: "POST",
                body: item
            }).then(resp => resp.json()
            ).then(result => {
                console.log(result);

                let ro = result.rOne;

                let dfrag = document.createDocumentFragment();
                let r = rt.content.cloneNode(true);
                r.querySelector('.ajaxRvImg').setAttribute('src', '/resources/upload/'+ro.rvNewImg+ro.rvExtn);
                r.querySelector('.ajaxRvDate').textContent = ro.rvDate;
                r.querySelector('.ajaxRvContent').textContent = ro.rvContent;
                r.querySelector('.ajaxUserEmail').textContent = ro.userEmail;

                dfrag.append(r);

                br.prepend(dfrag);

                rvForm.classList.remove('active');
            }).catch(error => {
                alert("리뷰 작성 실패");
            })
            ;
    });

  

    

