module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    tiempoEstandar: { type: 'string' },
  //  ordenServicio: {collection: 'ordenServicio',via: 'servicio'},
   // servicioRepuesto: {collection: 'servicioRepuesto',via: 'servicio'},
    empresa: {model: 'empresa'}
  },
  primaryKey:'id',
  beforeCreate: function (servicio, proceed) {
    if (servicio.descripcion) { servicio.descripcion = servicio.descripcion.toUpperCase() }
    return proceed();
  }
};

