
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    cliente: { model: 'cliente' },
    vehiculo: { model: 'vehiculo' },
    esActual: { type: 'boolean' },
    ordenes: {collection: 'orden' , via: 'clienteVehiculo'}
  },
  primarykey: 'id'

};

