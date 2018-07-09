module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    usuarios: {collection: 'usuarioRol', via: 'rol'}
  },
  primarykey: 'id'
};

