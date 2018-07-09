module.exports = {
  attributes: {
    id: { type: 'number', autoIncrement: true },
    persona: { model: 'persona' },
    vehiculos: { collection: 'clienteVehiculo', via: 'cliente' },
  },
  primaryKey: 'id', 
};

