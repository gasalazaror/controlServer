
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    cliente:{ model: 'cliente' },
    vehiculo:{ model: 'vehiculo' },
    ordenServicio: {collection: 'ordenServicio',via: 'orden'},
    empresa: {model: 'empresa'}
  },
  primaryKey:'id'

};