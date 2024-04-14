// Codigo de validacion campo telefonico
function formatPhoneNumber(input) {
    // Obtener el valor actual del campo de entrada
    let phoneNumber = input.value;

    // Eliminar cualquier guion existente
    phoneNumber = phoneNumber.replace(/-/g, '');

    // Validar que solo se permitan números y el formato XXXX-XXXX
    let regex = /^[0-9]{4}-?[0-9]{4}$/;
    if (!regex.test(phoneNumber)) {
        input.setCustomValidity("Número de teléfono inválido. El formato debe ser 0000-0000 y solo se permiten números.");
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
    if (phoneNumber.length > 8) {
        input.value = phoneNumber.slice(0, 9);
    }
}

// Codigo de validacion campos vacios
(() => {
    'use strict'

    //Id
    const forms = document.querySelectorAll('.needs-validation')

    // Loop de validacion y submision del formulario
    Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
            if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
            }

            form.classList.add('was-validated')
        }, false)
    })
})()