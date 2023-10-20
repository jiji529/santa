window.onload = () => {

  let sp = document.querySelector('#selectPrice');
  // 구매 입찰, 즉시 구매 폼 변경
  document.querySelectorAll('.select_item > button').forEach( (b) => {
    b.addEventListener('click', (e) => {
      document.querySelectorAll('.select_item > button').forEach((c) => {
        c.classList.remove('act');
      });
      e.currentTarget.classList.add('act');
      document.querySelector('.sub').classList.remove('hide');
      sp.textContent = e.currentTarget.querySelector('.price').textContent;
    });
  });

  document.querySelector('#buy_btn').addEventListener('click', () => {
    document.querySelector('input[name="grade"]').value = document.querySelector("button.act > div > span:first-child").textContent;
  });
}