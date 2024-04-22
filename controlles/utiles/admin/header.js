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