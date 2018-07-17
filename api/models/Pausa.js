module.exports = {

  attributes: {

    id: { type: 'number', autoIncrement: true },

    horaInicio: { type: 'string' },

    horaFin: { type: 'string' },

    ordenServicio: {model:'ordenServicio'}


  },

  primaryKey: 'id'

};
