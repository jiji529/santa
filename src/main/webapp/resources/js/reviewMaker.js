
    window.onload = function () {

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

        //리뷰 추가 템플릿 객체화
        let rowTemp = document.querySelector('#rvRow');

        
        rvAddBtn.onclick = function () {
            rvForm.classList.add('active');
        };
        
        rvCancelBtn.onclick = function () {
            rvForm.classList.remove('active');
            rvFormElm.forEach(function(e){
                e.value = '';
            });
        };
        
        // const makeItem = (rvImg, rvContent) => {
        //     //리뷰추가 템플릿 객체 -> 클론
        //     let r = rowTemp.content.cloneNode(true); 
            
//            let rc = r.querySelector('#AjaxRvContent');
//            rc.textContent = rvContent;

            //let rue = r.querySelector('#AjaxRvUserEmail');
            //rue.textContent = `${loginUser.userEmail}`;

//        }

        //<c:forEach items="${list}" var="item">
        //    document.querySelector('ul').append(makeItem("${item.title}", "${item.filename}"));
        //</c:forEach>
        
        document.querySelector('#rvSave').addEventListener("click", e => {

            const item = new FormData();
            
            const pNo = document.querySelector("input[name='pNo']");
            const rvImg = document.querySelector("input[name='rvImg']");
            const rvContent = document.querySelector("input[name='rvContent']");

            item.append("pNo", Number(pNo.value));
            item.append("rvImg", rvImg.files[0]);
            item.append("rvContent", rvContent.value);
            
            fetch("rvSave/ajax", {
                method: "POST",
                body: item
            }).then(resp => resp.text()
            ).then(result => {
                console.log(result);
                
                if(result == "OK") {
                    alert("리뷰가 등록되었습니다.");
                    
//                    document.querySelector("ul").append(makeItem(title.value, uploadFile.files[0].name));
//                    console.log(uploadFile.files[0].name);
                }
            }).catch(error => {
                alert("리뷰 작성 실패");
            })
            ;
        });

    };


