window.onload = function () {
    
    const grade_data = {
        labels: [],
        datasets: [{
            label: "S등급",
            data: [],
            borderColor: "#3e95cd",
            fill: false
        }]
    } 

//pNo 보내기 form태그


//차트보기 버튼
let showChart = document.querySelector('#showChart');

showChart.onclick = function () {

    //차트 만드는 form태그
    const chartForm = new FormData();
                
    //pNo 번호 -> 스트링.
    const chartpNo = document.querySelector('#chartpNo');
    
    console.log(typeof Number(chartpNo.value));
    
    chartForm.append("pNo", Number(chartpNo.value));

    fetch("ajax/SchartTest", {
        method: 'POST',
        body: chartForm
    }).then(response =>response.json())
    .then(function(SchartMap){ 

        console.log(SchartMap);
            
        console.log(SchartMap.Slist);
        SchartMap.Slist.forEach(e => {
            labels.push(e.saleEnd);
            data.push(e.salePrice);
        });

        console.log(grade_data);
        
    }).catch(function(error) {
        console.log(error);

        alert('차트 정보 조회를 실패했습니다.');
    });
};
    
    new Chart(document.getElementById("Sline-chart"), {
        type: 'line',
        data: grade_data,
        options: {
        	responsive: false,
            title: {
            display: true
            //, text: 'World population per region (in millions)'
            }
        }
    });
/*
    new Chart(document.getElementById("Aline-chart"), {
        type: 'line',
        data: {
        labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
        datasets: [{
            data: [6,3,2,2,7,26,82,172,312,433],
            borderColor: "#c45850",
            fill: false
        }]
        },
        options: {
        	responsive: false,
            title: {
            display: true
            }
        }
    });

    new Chart(document.getElementById("Bline-chart"), {
        type: 'line',
        data: {
        labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
        datasets: [{
            data: [168,170,178,190,203,276,408,547,675,734],
            borderColor: "#3cba9f",
            fill: false
        }]
        },
        options: {
        	responsive: false,
            title: {
            display: true
            }
        }
    });
    */
}