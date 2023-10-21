window.onload = () => {

  let bid_st = document.querySelector('#buy_bid input[name="saleTerm"]');
  let bid_sp = document.querySelector('#buy_bid input[name="desiredPrice"]');
  let imd_sp = document.querySelector('#buy_imd input[name="desiredPrice"]');

  // 구매 입찰, 즉시 구매 폼 변경
  document.querySelector(".tab-group").addEventListener('click', (e) => {
    if(e.target.textContent == '구매 입찰'){
      document.querySelector('.tab-group li:nth-child(1)').classList.add('active');
      document.querySelector('.tab-group li:nth-child(2)').classList.remove('active');
      document.querySelector('#buy_bid').classList.remove('hide');
      document.querySelector('#buy_imd').classList.add('hide');
    };
    if(e.target.textContent == '즉시 구매'){
      document.querySelector('.tab-group li:nth-child(2)').classList.add('active');
      document.querySelector('.tab-group li:nth-child(1)').classList.remove('active');
      document.querySelector('#buy_bid').classList.add('hide');
      document.querySelector('#buy_imd').classList.remove('hide');
    };

  });
  
  // 입찰 마감기한 변경시 버튼 체크
  document.querySelector('#bid_date div:nth-child(2)').addEventListener('click', (e) => {
    if(e.target.tagName=='A'){
      document.querySelectorAll('#bid_date a').forEach((a) => {
        a.classList.remove('act');
        e.target.classList.add('act');
      });
      bid_st.value = e.target.dataset.date;
    };
    if(bid_sp.value != null && bid_sp.value != ''){
      document.querySelector('#buy_bid .sub button').classList.remove('btn_not_active');
    };
  });
  
  // 구매 희망가 변경시 버튼 체크
  bid_sp.addEventListener('blur', () => {
    if(bid_st.value != null && bid_st.value != '' && bid_sp.value.trim().length > 4){
      document.querySelector('#buy_bid .sub button').classList.remove('btn_not_active');
    };
    if(bid_sp.value.trim().length < 5){
      document.querySelector('#buy_bid .sub button').classList.add('btn_not_active');      
    }
  });

  // 구매입찰에서 버튼에 불 안들어오면 전송 막음
  document.querySelector('#buy_bid form').addEventListener('submit', (e) => {
    if(e.target.querySelector('button').classList.contains('btn_not_active')){
      e.preventDefault();
    }
  });

}