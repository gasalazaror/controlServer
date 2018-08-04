module.exports = {

  attributes: {

    id: { type: 'number', autoIncrement: true },
    horaInicio: { type: 'string', defaultsTo: 'CITA/RECEPCIÓN' },
    horaFin: { type: 'string' },
    ordenServicio: {model:'ordenServicio'}
  },
  primaryKey: 'id'
};
