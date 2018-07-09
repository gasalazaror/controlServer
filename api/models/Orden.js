
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    clienteVehiculo:{ model: 'clienteVehiculo' },
    ordenServicio: {collection: 'ordenServicio',via: 'orden'},
    empresa: {model: 'empresa'}
  },
  primaryKey:'id'

};