module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    contrasena: {type: 'string'},
    capacidad: {type: 'number', defaultsTo: 1},
    usuarios: {collection: 'usuario',via: 'operadores'},
    serviciosAsignados: {collection: 'ordenservicio',via: 'operador'},
    empresa: {model: 'empresa'},
  },
  primaryKey:'id'
};

