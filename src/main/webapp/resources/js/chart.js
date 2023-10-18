

const pNo = document.querySelector("input[name='pNo']");

document.querySelector('#SchartBtn').onclick = function(){

    fetch('/ajax/chartTest?pNo=' + pNo.value, {
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
                responsive: false,
                plugins: {
                    title: {
                        display: true
                        //, text: 'World population per region (in millions)'
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

    fetch('/ajax/chartTest?pNo=' + pNo.value, {
        method: 'GET'
    }).then(response =>response.json())
    .then(function(chartMap){
        console.log(chartMap);

        let labels = [];
        let data = [];
        
        for (let i = 0; i < chartMap.AL.length; i++) {
            const s = chartMap.AL[i];

            console.log(typeof s.salePrice);

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
                responsive: false,
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

    fetch('/ajax/chartTest?pNo=' + pNo.value, {
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
                responsive: false,
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

