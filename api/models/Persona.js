module.exports = {
  attributes: {
    
    id: { type: 'number', autoIncrement: true },
    cedula: { type: 'string' },
    nombre: { type: 'string', required: true },
    estado: { type: 'string', required: true },
    tipo: { type: 'string' },
    telefono: { type: 'string' },
    direccion: { type: 'string' },
    correo: { type: 'string', required: true, unique: true },
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

