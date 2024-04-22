var gx1 = document.getElementById("grafica_1").getContext("2d");
var myChart = new Chart(gx1, {
    type: "bar",
    data: {
        labels: ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'], // Etiquetas de la gráfica
        datasets: [{
            label: 'Ventas totales anuales', // Título del dataset
            data: [68, 97, 30, 12, 89, 75, 49, 45, 48, 110, 3, 56], // Datos
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: { // Cambia yAxes a y, usando la estructura actual de Chart.js
                ticks: {
                    beginAtZero: true
                }
            }
        }
    }
});

var gx2 = document.getElementById("grafica_2").getContext("2d");
var myChart2 = new Chart(gx2, {
    type: "line",
    data: {
        labels: ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'], // Etiquetas de la gráfica
        datasets: [{
            label: 'Ventas totales anuales', // Título del dataset
            data: [68, 97, 30, 12, 89, 75, 49, 45, 48, 110, 3, 56], // Datos
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: { // Cambia yAxes a y, usando la estructura actual de Chart.js
                ticks: {
                    beginAtZero: true
                }
            }
        }
    }
});

/*grafica 3*/

var gx3 = document.getElementById("grafica_3").getContext("2d");
var myChart3 = new Chart(gx3, {
    type: "bar",
    data: {
        labels: ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'], // Etiquetas de la gráfica
        datasets: [{
            label: 'Próximas citas',
            data: [65, 59, 80, 81, 56, 55, 40,89,55,6,24,47],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

var gx4 = document.getElementById("grafica_4").getContext("2d");
var myChart4 = new Chart(gx4, {
    type: "line",
    data: {
        labels: ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'], // Etiquetas de la gráfica
        datasets: [{
            label: 'Próximas citas',
            data: [65, 59, 80, 81, 56, 55, 40,89,55,6,24,47],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

var gx5 = document.getElementById("grafica_5").getContext("2d");
var myChart5 = new Chart(gx5, {
    type: "line",
    data: {
        labels: ['Ajuste Quiropráctico', 'Terapia de Masaje', 'Terapia de Ultrasonido', 'Estimulación Eléctrica', 'Terapia de Ondas de Choque', 'Evaluación Postural', 'Terapia de Descompresión Espinal', 'Consejería Nutricional', 'Terapia con Calor y Frío'], // Etiquetas de la gráfica
        datasets: [{
            label: 'valoraciones',
            data: [1,5,3,2,4,1,4,2,3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

var gx6 = document.getElementById("grafica_6").getContext("2d");
var myChart6 = new Chart(gx6, {
    type: "bar",
    data: {
        labels: ['Ajuste Quiropráctico', 'Terapia de Masaje', 'Terapia de Ultrasonido', 'Estimulación Eléctrica', 'Terapia de Ondas de Choque', 'Evaluación Postural', 'Terapia de Descompresión Espinal', 'Consejería Nutricional', 'Terapia con Calor y Frío'], // Etiquetas de la gráfica
        datasets: [{
            label: 'valoraciones',
            data: [1,5,3,2,4,1,4,2,3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
            ],
            borderWidth: 1
        }]
    },
    options: { // Debe ser 'options', no 'Options'
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
