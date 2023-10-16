window.onload = () => {

  // 동의 체크
  document.querySelectorAll('.notice label input').forEach((i) => {
    i.addEventListener('click', (e) => {
      if(i.hasAttribute('checked')){
        i.removeAttribute('checked');
      }else{
        i.setAttribute('checked', true);
      }
      let check = true;
      document.querySelectorAll('.notice label input').forEach((j) => {
        if(!j.hasAttribute('checked')) check=false;
      });
      if(check){
        document.querySelector('.sub button').classList.remove('btn_not_active');
      }else{
        document.querySelector('.sub button').classList.add('btn_not_active');
      }
    });
  });
  

  // 구매입찰에서 버튼에 불 안들어오면 전송 막음
  document.querySelector('#notice_form').addEventListener('submit', (e) => {
    if(e.target.querySelector('button').classList.contains('btn_not_active')){
      e.preventDefault();
    }
  });

}