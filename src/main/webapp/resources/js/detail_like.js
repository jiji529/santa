
const pNoTolike = document.querySelector("input[name='pNo']");

let likeBtn = document.querySelector('.likeBtn > button');

//관심 개수
let likeCnt = document.querySelector('.like');
console.log(typeof likeCnt.textContent);

likeBtn.addEventListener('click', function () {

    //북마크 변경 부분
    let bookmark = document.querySelectorAll('.likeBtn .bookmark');
    console.log(bookmark);

    bookmark.forEach(e => {
        e.classList.toggle('likeUnActive');
    });

    //관심개수 변경
    if(likeCnt.textContent == "4") {
        likeCnt.textContent = "5";
    } else {
        likeCnt.textContent = "4";
    }

    /* fetch("likeActive/ajax?pNo=" + pNoTolike.value, {
        method: "GET"
    }).then(resp => resp.json()
    ).then(result => {
        console.log(result.likeCnt);
        
    }).catch(error => {
        alert("관심 상품 등록 실패");
    })
    ;
 */
    
});