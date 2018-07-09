module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    contrasena: {type: 'string'},
    usuarios: {collection: 'usuario',via: 'grupo'},
    serviciosAsignados: {collection: 'ordenservicio',via: 'grupo'},
    empresa: {model: 'empresa'},
  },
  primaryKey:'id'
};

