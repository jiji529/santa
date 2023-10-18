

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


        //리뷰 추가 템플릿 객체화
        //let rvTemp = document.querySelector('#rvTemp');
        
        rvAddBtn.onclick = function () {
            //console.log(rvConfirm.value);
            if(!rvConfirm.value) {
                alert('로그인 후 이용해주세요.');
                location.reload();
            }
            console.log(document.querySelector('.between'));
            rvForm.classList.add('active');
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

            //const userEmail = document.querySelector(".userEmailInp");


            /*
            const makeItem = (rvNewImg, rvExtn, rvDate, rvContent, userEmail) => {
             //리뷰추가 템플릿 객체 -> 클론
                let r = rvTemp.content.cloneNode(true); 

                let ajaxRvImg = r.querySelector('.ajaxRvImg');
                ajaxRvImg.setAttribute('src', 'upload/s.rvNewImg+s.rvExtn');

                let ajaxRvDate = r.querySelector('.ajaxRvDate');
                ajaxRvDate.textContent = 

                let ajaxRvContent = r.querySelector('.ajaxRvContent');
                ajaxRvContent.textContent = 

                let ajaxUserEmail = r.querySelector('.ajaxUserEmail');
                ajaxUserEmail.textContent = 

            }
            */
            
            

        
        document.querySelector('#rvSave').addEventListener("click", e => {

			rvForm.classList.remove('active');

            const item = new FormData();
            

            item.append("pNo", Number(pNo.value));
            item.append("rvImg", rvImg.files[0]);
            item.append("rvContent", rvContent.value);

            console.log();
            
            fetch("rvSave/ajax", {
                method: "POST",
                body: item
            }).then(resp => resp.text()
            ).then(result => {
                console.log(result);

                
                if(result == "OK") {
                    alert("리뷰가 등록되었습니다.");

                    //                  document.querySelector("ul").append(makeItem(title.value, uploadFile.files[0].name));
                    rvForm.classList.remove('active');
                }
            }).catch(error => {
                alert("리뷰 작성 실패");
            })
            ;
        });

  

    

