// Codigo para tener el header, para luego mandarlo a llamar

const header = document.querySelector("header");

header.innerHTML = `<div class="menu_color">
<div class="row">
    <div class="col-sm-1 col-md-1 col-lg-1 text-center mt-4">
        <div class="btn-menu ">
            <label for="btn-menu"><img src="../../recursos/img/menu.png" width="50px"
                    for="btn-menu"></label>
        </div>
        <input type="checkbox" id="btn-menu">
        <div class="containerzzz-menu">
            <div class="cont-menu">
                <nav>
                    <a href="../../../vistas/privada/inicio.html">Inicio</a>
                    <a href="../../../vistas/privada/cita.html">Citas</a>
                    <a href="../../../vistas/privada/notas_privada.html">Notas</a>
                    <a href="../../../vistas/privada/pacientes_privada.html">Pacientes</a>
                    <a href="../../../vistas/privada/pagina_principal.html">Sitio publico</a>
                    <a href="../../../vistas/privada/datos.html">Gráficas</a>
                </nav>
                <label for="btn-menu">✖️</label>
            </div>
        </div>
    </div>
    <div class="col-sm-10 col-md-10 col-lg-10 text-center mt-4">
        <img src="../../recursos/img/icono.png" alt="">
    </div>

    <div class="col-sm-1 col-md-1 col-lg-1 text-center">
        <a class="boton" href="#">
            <img src="../../recursos/img/admin/usuario.png" width="80px" alt="Descripción de la imagen">
        </a>
    </div>
</div>
</div>`

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



