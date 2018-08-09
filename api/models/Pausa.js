module.exports = {

  attributes: {

    id: { type: 'number', autoIncrement: true },
    horaInicio: { type: 'string', defaultsTo: 'CITA/RECEPCIÓN' },
    motivo: { type: 'string' },
    descripcion: {type: 'string'},
    horaFin: { type: 'string' },
    ordenServicio: {model:'ordenServicio'}
  },
  primaryKey: 'id'
};
