
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

  // customToJSON: function() {
  //   var orden = this
   
  //   Persona.findOne({id: orden.cliente.persona}, function(error, persona) {
  //     orden.cliente.persona = persona
  //   return _.omit(this, ['razonSocial'])
  //   })
   
  // },
  primaryKey:'id',

 

};