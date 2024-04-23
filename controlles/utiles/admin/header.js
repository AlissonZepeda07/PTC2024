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
                    <a href="../../../vistas/privada/comentarios.html">Comentarios</a>
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