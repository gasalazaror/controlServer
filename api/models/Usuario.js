module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    roles: { collection: 'usuarioRol', via: 'usuario' },
    persona: { model: 'persona' },
    // asignaciones: {collection: 'asignacion',via: 'usuario'},
    grupo: { model: 'grupo' }
  },
  primaryKey: 'id'
};

