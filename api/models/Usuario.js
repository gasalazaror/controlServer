module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    password: {type: 'string'},
    roles: { collection: 'rol', via: 'usuarios', dominant: true },
    persona: { model: 'persona' },
    // asignaciones: {collection: 'asignacion',via: 'usuario'},
    operadores: {collection: 'operador',via: 'usuarios'},
  },
  primaryKey: 'id',



};

