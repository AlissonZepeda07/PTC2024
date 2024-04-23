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

//Codigo de validacion de campo email
function formatEmail(input) {

    //Obtener el valor actual del campo de entrada
    let Email = input.value;

    // Validar formato de correo electrónico ABC@
    var emailPattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/i;
    if (!emailPattern.test(Email)) {

        // Mostrar mensaje de error

        return false;
    }

    // Establecer el valor formateado en el campo de entrada
    input.value = Email;
}

//codigo de validacion de campo de contraseña
function formatPassword(input) {

    let Contraseña = input.value;

    // Validar longitud mínima de contraseña
    if (Contraseña.length < 8) {

        // Mostrar mensaje de error

        return false;
    }

    // Establecer el valor formateado en el campo de entrada
    input.value = Contraseña;
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
