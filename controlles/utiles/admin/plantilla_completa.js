// Codigo para tener el header, para luego mandarlo a llamar

const header = document.querySelector("header");

header.innerHTML = `<nav class="navbar navbar-expand-md bg-body-tertiary" id="inicio_pt1">
    <div class="container-fluid mx-5 color_nav">
        <a class="navbar-brand" href="#"></a>
        <img src="../../recursos/img/icono.png" class="me-5">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link  color_nav_text" aria-current="page" href="#inicio_pt1">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color_nav_text" aria-current="page" href="#inicio_pt1">Citas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color_nav_text" aria-current="page" href="#inicio_pt1">Notas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link color_nav_text" aria-current="page" href="#inicio_pt1">Pacientes</a>
                </li>
            </ul>

            <a class="boton" href="#">
                <img src="../../recursos/img/admin/usuario.png" width="80px" alt="Descripción de la imagen">
            </a>
        </div>
    </div>
</nav>`


// Código para tener el footer, para luego mandarlo a llamar

const footer = document.querySelector("footer");

footer.innerHTML = `
<div class="bg-light text-center text-white">
<!-- Grid container -->
<div class="container p-4 pb-0" >
    <!-- Section: Social media -->
    <section class="mb-4">
        <!-- Facebook -->
        <a class="btn btn-primary btn-floating m-1 footer_color_boton"  href="#!"
            role="button"><img src="../../recursos/img/footer/facebook_img.png"  width="30px" alt=""></a>

        <!-- Correo -->
        <a class="btn btn-primary btn-floating m-1 footer_color_boton"  href="#!"
            role="button"><img src="../../recursos/img/footer/correo_img.png" width="30px" alt=""></a>

        <!-- Ubicación -->
        <a class="btn btn-primary btn-floating m-1 footer_color_boton"  href="#!"
            role="button"><img src="../../recursos/img/footer/lugar_img.png" width="30px" alt=""></a>

        <!-- WhatsApp -->
        <a class="btn btn-primary btn-floating m-1 footer_color_boton"  href="#!"
            role="button"><img src="../../recursos/img/footer/whatsapp_img.png" width="30px" alt=""></a>

    </section>
    <!-- Section: Social media -->
</div>
<!-- Grid container -->

<!-- Copyright -->
<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2024 Copyright:
    <a class="text-white" href="#">Quiropráctica Específica</a>
</div>
<!-- Copyright -->
</div>`



