module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    anio: { type: 'string' },
    marca: { model: 'marca' },
   // vehiculos: { collection: 'vehiculo', via: 'modelo' }
  },

};

