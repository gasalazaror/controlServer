module.exports = {

  attributes: {
    
    orden: { model: 'orden' },
    servicio: { model: 'servicio' },
    horaInicio: { type: 'string' },
    horaFin: { type: 'string' },
    estado: { type: 'string', defaultsTo: 'CITA/RECEPCIÓN' },
    // asignaciones: {collection: 'asignacion',via: 'ordenServicio'},
     grupo: {model: 'grupo'},
     pausas : {collection: 'pausa', via: 'ordenServicio'},
    pausaActual: { type: 'string' }
  }
};

