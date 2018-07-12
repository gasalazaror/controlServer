module.exports = {
  attributes: {
    id: { type: 'number', autoIncrement: true },
    persona: { model: 'persona' },
    vehiculos: { collection: 'vehiculo', via: 'clientes', dominant: true },
    pertenencias: { collection: 'vehiculo', via: 'dueno' },
    ordenes: {collection: 'orden', via: 'cliente'},

  },
  primaryKey: 'id', 
};

