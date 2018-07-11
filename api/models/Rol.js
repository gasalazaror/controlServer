module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    usuarios: {collection: 'usuario', via: 'roles'}
  },
  primarykey: 'id'
};

