window.onload = function () {

    const grade_data = {
        labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
        datasets: [{
            data: [86,114,106,106,107,111,133,221,783,2478],
            //label: "S등급",
            borderColor: "#3e95cd",
            fill: false
        }]
      }
    
    new Chart(document.getElementById("Sline-chart"), {
        type: 'line',
        data: grade_data,
        options: {
        	responsive: false,
            title: {
            display: true,
            text: 'World population per region (in millions)'
            }
        }
    });

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
            display: true,
            text: 'World population per region (in millions)'
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
            display: true,
            text: 'World population per region (in millions)'
            }
        }
    });
}