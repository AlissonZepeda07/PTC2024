// Crea una nueva instancia del modal
var modalRealizado = new bootstrap.Modal(document.getElementById('ModalRealizado'));

// Evento que se dispara cuando el modal se ha mostrado
document.getElementById('ModalRealizado').addEventListener('shown.bs.modal', function () {

    var progressBar = document.getElementById('progressBar');
    var value = 0;
    var interval = 30; // Intervalo de actualización en milisegundos
    var duration = 1000; // Duración total en milisegundos
    var increment = 100 / (duration / interval);

    var timer = setInterval(function () {
        value += increment;
        progressBar.style.width = value + '%';
        progressBar.setAttribute('aria-valuenow', value);

        if (value >= 100) {
            clearInterval(timer);
        }
    }, interval);

    setTimeout(function () {
        modalRealizado.hide();
        progressBar.style.width = '0%'; // Reiniciar la barra de progreso
        progressBar.setAttribute('aria-valuenow', '0');
    }, 3000);

    // Programa el temporizador para cerrar el modal después de 5 segundos
    setTimeout(function () {
        modalRealizado.hide();
    }, 2000);
});