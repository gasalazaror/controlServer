module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    tipo: { type: 'string' },
    unidad: { type: 'string' },
    servicioRepuesto: {collection: 'servicioRepuesto',via: 'repuesto'}
  },
  primaryKey:'id'

};

