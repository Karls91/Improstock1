/**
 * Archivo: script.js
 * Proyecto: ImproStock
 * Autor: Juan CArlos Contreras
 * Ficha: 3070297
 */

// Muestra un mensaje de bienvenida
function bienvenida() {
    console.log("Bienvenido a ImproStock");
}

// Muestra la fecha actual en el Dashboard
function mostrarFecha() {

    const fecha = new Date();

    const opciones = {
        weekday: "long",
        year: "numeric",
        month: "long",
        day: "numeric"
    };

    const elemento = document.getElementById("fechaActual");

    if (elemento) {
        elemento.innerHTML = fecha.toLocaleDateString("es-CO", opciones);
    }

}