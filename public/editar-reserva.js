const formReserva = document.querySelector('#formNuevaReserva');
const reservaId = formReserva.dataset.id;

const nombre = document.querySelector('#nombre')
const apellido = document.querySelector('#apellido')
const fecha_hora_salida = document.querySelector('#fecha_hora_salida')
const fecha_hora_llegada = document.querySelector('#fecha_hora_llegada')
const asiento = document.querySelector('#asiento')
const telefono = document.querySelector('#telefono')
const email = document.querySelector('#email')


document.addEventListener('DOMContentLoaded', async () => {
    // Traemos la reserva que se va a editar
    const response = await fetch(`/api/${reservaId}`);
    const data = await response.json();

    // Mostrar en el formulario los datos de la reserva que se quiere actualizar
    nombre.value = data.nombre;
    apellido.value = data.apellido;
    fecha_hora_salida.value = data.fecha_hora_salida;
    fecha_hora_llegada.value = data.fecha_hora_llegada;
    asiento.value = data.asiento;
    telefono.value = data.telefono;
    email.value = data.email;
});


formReserva.addEventListener('submit', async (e) => {
    e.preventDefault();
    
    reservaActualizada = {
        nombre: nombre.value,
        apellido: apellido.value,
        fecha_hora_salida: fecha_hora_salida.value,
        fecha_hora_llegada: fecha_hora_llegada.value,
        asiento: asiento.value,
        telefono: telefono.value,
        email: email.value,
    }


    // Se envían los nuevos datos al servidor express
    const response = await fetch(`/api/${reservaId}`, {
        method: 'PUT',
        body: JSON.stringify(reservaActualizada),
        headers: {
            'Content-Type':'application/json'
        }
    })

    const data = await response.json();

    // Mostrar mensajes al usuario
    alert("Reserva editada con éxito");

    // Redireccionar al usuario

    window.location.href = "/"

})