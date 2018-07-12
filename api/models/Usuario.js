module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    roles: { collection: 'rol', via: 'usuarios', dominant: true },
    persona: { model: 'persona' },
    // asignaciones: {collection: 'asignacion',via: 'usuario'},
    grupo: { model: 'grupo' }
  },
  primaryKey: 'id',



};

