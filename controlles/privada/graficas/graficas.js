var gx1 = document.getElementById("grafica_1").getContext("2d")
var myChart = new Chart(gx1, {
    type: "bar",
    data: {
        labels: ['Masajes', 'Paquete Primera vez','Acupuntura'],
        datasets: [{
            labels: 'Total ventas',
            data: [68, 97, 30],
        }]
    },
    Options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
})

var gx2 = document.getElementById("grafica_2").getContext("2d")
var myChart2 = new Chart(gx2, {
    type: "pie",
    data: {
        labels: ['Masajes', 'Paquete Primera vez', 'Acupuntura'],
        datasets: [{
            labels: 'Total ventas',
            data: [68, 97, 30],
        }]
    }
})