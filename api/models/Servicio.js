module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    tiempoEstandar: { type: 'string' },
    categoria:{model: 'categoria'},
    ordenes:{
      collection: 'orden',
      via: 'servicio',
      through: 'ordenServicio'
    },
   // servicioRepuesto: {collection: 'servicioRepuesto',via: 'servicio'},
    empresa: {model: 'empresa'}
  },
  primaryKey:'id',
  beforeCreate: function (servicio, proceed) {
    if (servicio.descripcion) { servicio.descripcion = servicio.descripcion.toUpperCase() }
    return proceed();
  }
};

