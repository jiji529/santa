const pNoTochart = document.querySelector("input[name='pNo']");

fetch('/ajax/graphTest?pNo=' + pNoTochart.value, {
    method: 'GET'
}).then(response =>response.json())
.then(function(chartMap){
    console.log(chartMap);

    let labels = [];
    let data = [];
    
    for (let i = 0; i < chartMap.SL.length; i++) {
        const s = chartMap.SL[i];

        labels.push(s.saleEnd);
        data.push(s.salePrice);

    }
    console.log(labels);
    console.log(data);

    const grade_data = {
        
        labels: labels,
        datasets: [{
            label: "S등급",
            data: data,
            borderColor: "#3e95cd",
            fill: false
        }]
    }

    new Chart(document.getElementById("Sline-chart"), {
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
    console.log(error);
    alert('차트를 불러올 수 없습니다.');
});

//S차트
let SChart = document.querySelector('#Sline-chart');
console.log(SChart);
//A차트
let AChart = document.querySelector('#Aline-chart');
console.log(AChart);
//B차트
let BChart = document.querySelector('#Bline-chart');
console.log(BChart);


document.querySelector('#SchartBtn').onclick = function(){

    SChart.classList.remove('chartHidden');
    AChart.classList.add('chartHidden');
    AChart.style = '';
    BChart.classList.add('chartHidden');
    BChart.style = '';

    fetch('/ajax/graphTest?pNo=' + pNoTochart.value, {
        method: 'GET'
    }).then(response =>response.json())
    .then(function(chartMap){
        console.log(chartMap);

        let labels = [];
        let data = [];
        
        for (let i = 0; i < chartMap.SL.length; i++) {
            const s = chartMap.SL[i];

            labels.push(s.saleEnd);
            data.push(s.salePrice);

        }
        console.log(labels);
        console.log(data);

        const grade_data = {
            
            labels: labels,
            datasets: [{
                label: "S등급",
                data: data,
                borderColor: "#3e95cd",
                fill: false
            }]
        }

        new Chart(document.getElementById("Sline-chart"), {
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
        console.log(error);
        alert('차트를 불러올 수 없습니다.');
    });

}

document.querySelector('#AchartBtn').onclick = function(){

    AChart.classList.remove('chartHidden');
    SChart.classList.add('chartHidden');
    SChart.style = '';
    BChart.classList.add('chartHidden');
    BChart.style = '';

    fetch('/ajax/graphTest?pNo=' + pNoTochart.value, {
        method: 'GET'
    }).then(response =>response.json())
    .then(function(chartMap){
        console.log(chartMap);

        let labels = [];
        let data = [];
        
        for (let i = 0; i < chartMap.AL.length; i++) {
            const s = chartMap.AL[i];

            labels.push(s.saleEnd);
            data.push(s.salePrice);

        }
        console.log(labels);
        console.log(data);

        const grade_data = {
            
            labels: labels,
            datasets: [{
                label: "A등급",
                data: data,
                borderColor: "#c45850",
                fill: false
            }]
        }

        new Chart(document.getElementById("Aline-chart"), {
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
        console.log(error);
        alert('차트를 불러올 수 없습니다.');
    });

}

document.querySelector('#BchartBtn').onclick = function(){

    BChart.classList.remove('chartHidden');
    SChart.classList.add('chartHidden');
    AChart.style = '';
    AChart.classList.add('chartHidden');
    AChart.style = '';

    fetch('/ajax/graphTest?pNo=' + pNoTochart.value, {
        method: 'GET'
    }).then(response =>response.json())
    .then(function(chartMap){
        console.log(chartMap);

        let labels = [];
        let data = [];
        
        for (let i = 0; i < chartMap.BL.length; i++) {
            const s = chartMap.BL[i];

            labels.push(s.saleEnd);
            data.push(s.salePrice);

        }
        console.log(labels);
        console.log(data);

        const grade_data = {
            
            labels: labels,
            datasets: [{
                label: "B등급",
                data: data,
                borderColor: "#3cba9f",
                fill: false
            }]
        }

        new Chart(document.getElementById("Bline-chart"), {
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
        console.log(error);
        alert('차트를 불러올 수 없습니다.');
    });

}
