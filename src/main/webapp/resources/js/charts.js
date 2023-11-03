function chartDraw(listName, labelName, bColor, chartId) {

    const pNoTochart = document.querySelector("input[name='pNo']");

    fetch('/ajax/graphTest?pNo=' + pNoTochart.value, {
        method: 'GET'
    })
    .then(response =>response.json())
    .then(function(chartMap){
    
        let labels = [];
        let data = [];
        
        for (let i = 0; i < chartMap[listName].length; i++) {
            const s = chartMap[listName][i];
    
            labels.push(s.saleEnd);
            data.push(s.salePrice);
    
        }
    
        const grade_data = {
            
            labels: labels,
            datasets: [{
                label: labelName,
                data: data,
                borderColor: bColor,
                fill: false
            }]
        }
    
        new Chart(document.getElementById(chartId), {
            type: 'line',
            data: grade_data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    title: {
                        display: true
                    }
                },
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: true
                            }
                        }
                    ]
                }
            }
        });
        
    }).catch(function(error) {
        alert('차트를 불러올 수 없습니다.');
    });
}

chartDraw("SL","S등급","#3e95cd","Sline-chart");

//S차트
let SChart = document.querySelector('#Sline-chart');
//A차트
let AChart = document.querySelector('#Aline-chart');
//B차트
let BChart = document.querySelector('#Bline-chart');

document.querySelector('#SchartBtn').onclick = function(){

    AChart.classList.add('chartHidden');
    AChart.style = '';
    BChart.classList.add('chartHidden');
    BChart.style = '';
    SChart.classList.remove('chartHidden');

    chartDraw("SL","S등급","#3e95cd","Sline-chart");

}

document.querySelector('#AchartBtn').onclick = function(){

    SChart.classList.add('chartHidden');
    SChart.style = '';
    BChart.classList.add('chartHidden');
    BChart.style = '';
    AChart.classList.remove('chartHidden');

    chartDraw("AL","A등급","#c45850","Aline-chart");

}

document.querySelector('#BchartBtn').onclick = function(){

    SChart.classList.add('chartHidden');
    SChart.style = '';
    AChart.classList.add('chartHidden');
    AChart.style = '';
    BChart.classList.remove('chartHidden');

    chartDraw("BL","B등급","#3cba9f","Bline-chart");

}
