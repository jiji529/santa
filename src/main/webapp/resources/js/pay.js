window.onload = () => {

  let sub_payTpe = document.querySelector('.sub input[name="payType"]');

  
  // 입찰 마감기한 변경시 버튼 체크
  document.querySelector('#pay ul').addEventListener('click', (e) => {
    console.log(e.target.tagName);
    if(e.target.tagName =='A'){
      document.querySelectorAll('#pay ul a').forEach((a) => {
        a.classList.remove('act');
        e.target.classList.add('act');
      });
      sub_payTpe.value = e.target.dataset.payType;
    };
    document.querySelector('.sub button').classList.remove('btn_not_active');
  });

  // 구매입찰에서 버튼에 불 안들어오면 전송 막음
  document.querySelector('#payform').addEventListener('submit', (e) => {
    if(e.target.querySelector('button').classList.contains('btn_not_active')){
      e.preventDefault();
    }
  });

}