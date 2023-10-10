
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


        

        rvAddBtn.onclick = function () {
            rvForm.classList.add('active');
         };

         rvCancelBtn.onclick = function () {
            rvForm.classList.remove('active');
            rvFormElm.forEach(function(e){
               e.value = '';
            });
         };

        rvSaveBtn.onclick = function(){

            fetch('/www/rvSave.do', {
                method: 'POST',
                body: new FormData(rvForm)
            }).then(function (response) {
                return response.json();
            }).then(function (data) {
                //tbody에 넣는 곳.
                console.log(data);
            }).catch(function (error) {
                console.log(error);
            })

        }
    };


