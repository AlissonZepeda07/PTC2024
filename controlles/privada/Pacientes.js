// Codigo de validacion campo telefonico
function formatPhoneNumber(input) {

    // Obtener el valor actual del campo de entrada
    let phoneNumber = input.value;

    // Eliminar cualquier guion existente
    phoneNumber = phoneNumber.replace(/-/g, '');

    // Validar que solo se permitan números y el formato XXXX-XXXX
    let regex = /^[0-9]{4}-?[0-9]{4}$/;
    if (!regex.test(phoneNumber)) {
        input.setCustomValidity("El formato debe ser 0000-0000.");
        input.classList.add("is-invalid");
    }

    else {
        input.setCustomValidity("");
        input.classList.remove("is-invalid");
    }

    // Agregar el guion después del cuarto dígito si no se ha agregado anteriormente
    if (phoneNumber.length >= 5 && phoneNumber.charAt(4) !== '-') {
        phoneNumber = phoneNumber.slice(0, 4) + '-' + phoneNumber.slice(4);
    }

    // Establecer el valor formateado en el campo de entrada
    input.value = phoneNumber;

    // Limitar la cantidad máxima de caracteres a 9
    if (phoneNumber.length >= 9) {
        input.value = phoneNumber.slice(0, 9);
        input.setAttribute("maxlength", "9");
    }

    else {
        input.removeAttribute("maxlength");
    }
}

// Codigo de validacion campos vacios
(() => {
    'use strict'

    // Id
    const forms = document.querySelectorAll('.needs-validation')

    // Loop de validacion y submision del formulario
    Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
            if (form.checkValidity()) { // Verifica si la validación es exitosa

                // Abre el modal de confirmación aquí
                const modalInterrogante = new bootstrap.Modal(document.getElementById('ModalInterrogante'));
                modalInterrogante.show();

                BtnInterrogante.addEventListener('click', () => {

                    // Programa el temporizador para cerrar el modal después de 1 milisegundo
                    setTimeout(function () {
                        modalInterrogante.hide();
                    }, 10);
                });
            } 
            
            else {
                event.preventDefault(); // Detiene el envío del formulario si la validación falla
                event.stopPropagation();
            }

            form.classList.add('was-validated')
        }, false)
    })
})()

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