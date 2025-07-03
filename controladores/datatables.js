let options = {
    language: {
        url: 'https://cdn.datatables.net/plug-ins/2.3.2/i18n/es-ES.json',
    },
    order: [0, 'asc'],
    responsive: {
        details: {
            type: 'column',
            target: 'tr'
        }
    }
};

let tablaEmpleados = new DataTable('#tabla-empleados', options);
let tablaConsultores = new DataTable('#tabla-consultores', options);
let tablaDepartamentos = new DataTable('#tabla-departamentos', options);
