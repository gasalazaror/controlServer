module.exports = {
  attributes: {
    id: { type: 'number', autoIncrement: true },
    persona: { model: 'persona' },
    vehiculos: { collection: 'vehiculo', via: 'clientes' },
  },
  primaryKey: 'id', 
};

