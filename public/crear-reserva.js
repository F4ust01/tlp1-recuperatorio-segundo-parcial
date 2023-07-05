const formCrearReserva = document.querySelector("#formNuevaReserva")

formCrearReserva.addEventListener('submit', async (e) => {
    e.preventDefault();

    const nombre = document.querySelector('#nombre').value;
    const apellido = document.querySelector('#apellido').value;
    const fecha_hora_salida = document.querySelector('#fecha_hora_salida').value;
    const fecha_hora_llegada = document.querySelector('#fecha_hora_llegada').value;
    const asiento = document.querySelector('#asiento').value;
    const telefono = document.querySelector('#telefono').value;
    const email = document.querySelector('#email').value;

    const reserva = {
        nombre,
        apellido,
        fecha_hora_salida,
        fecha_hora_llegada,
        asiento,
        telefono,
        email
    }


    const response = await fetch('http://localhost:4000/api', {
        method: 'POST',
        body: JSON.stringify(reserva),
        headers: {
            'Content-Type': 'application/json' // Cuando se envían datos JSON al servidor
        }
    })

    const data = await response.json();

    alert(data.message)
    window.location.href = "/"



});
