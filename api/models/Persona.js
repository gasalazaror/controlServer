module.exports = {
  attributes: {
    
    id: { type: 'number', autoIncrement: true },
    cedula: { type: 'string', required: true },
    nombre: { type: 'string', required: true },
    estado: { type: 'string', required: true },
    telefono: { type: 'string', required: true },
    direccion: { type: 'string', required: true },
    correo: { type: 'string', required: true },
    empresa: { model: 'empresa' },
    cliente: {collection: 'cliente', via: 'persona'},
    usuario: {collection: 'usuario', via: 'persona'}
  },
  primaryKey: 'id',
 
  beforeCreate: function (persona, proceed) {

    if (persona.nombre) { persona.nombre = persona.nombre.toUpperCase() }
    if (persona.estado) { persona.estado = persona.estado.toUpperCase() }
    if (persona.telefono) { persona.telefono = persona.telefono.toUpperCase() }
    
  
    return proceed();
  }
};

