
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    cliente:{ model: 'cliente' },
    vehiculo:{ model: 'vehiculo' },
    servicios:{
      collection: 'servicio',
      via: 'orden',
      through: 'ordenServicio'
    },
    empresa: {model: 'empresa'}
  },
  primaryKey:'id'

};