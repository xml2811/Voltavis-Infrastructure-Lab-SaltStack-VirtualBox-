document.addEventListener('DOMContentLoaded', function() {
    var textoOculto = document.getElementById('texto-oculto');
    var contenedores = document.querySelectorAll('.image-container');
    var contenedorInicial = contenedores[0];

    var posicionInicial = contenedorInicial.getBoundingClientRect(); // Obtener la posición inicial del primer contenedor

    textoOculto.style.top = posicionInicial.top + 'px'; // Establecer la posición inicial para el texto
    textoOculto.style.left = posicionInicial.left + (posicionInicial.width / 2) + 'px'; // Ajustar la posición horizontal al centro del contenedor

    contenedores.forEach(function(contenedor) {
        contenedor.addEventListener('click', function() {
            var texto = this.getAttribute('data-text');
            textoOculto.textContent = texto;
            textoOculto.classList.add('activo');

            // Desplazar la página hacia la mitad
            var windowHeight = window.innerHeight || document.documentElement.clientHeight;
            window.scrollTo({
                top: windowHeight / 2,
                behavior: 'smooth' // Desplazamiento suave
            });
        });
    });

    document.addEventListener('click', function(event) {
        var isClickInsideTexto = textoOculto.contains(event.target);
        var isClickInsideContenedor = false;
        contenedores.forEach(function(contenedor) {
            if (contenedor.contains(event.target)) {
                isClickInsideContenedor = true;
            }
        });

        if (!isClickInsideTexto && !isClickInsideContenedor) {
            textoOculto.classList.remove('activo');
        }
    });
});
