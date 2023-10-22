let likeBtn = document.querySelector('.likeBtn > button');

const pNoTochart = document.querySelector("input[name='pNo']");

likeBtn.addEventListener('click', function () {
    likeBtn.classList.toggle('btn-light');
    likeBtn.classList.toggle('likeActive');
    console.log(likeBtn);

    fetch("likeActive/ajax?pNo=" + pNoTochart.value, {
        method: "GET"
    }).then(resp => resp.json()
    ).then(result => {
        console.log(result.likeCnt);

    }).catch(error => {
        alert("관심 상품 등록 실패");
    })
    ;
    
});