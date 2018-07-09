module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    razonSocial: { type: 'string', unique:true, required: true },
    nombreComercial: { type: 'string',  unique:true, required: true },
    ruc: { type: 'string' , unique:true, required: true, maxLength:13, maxLength:13 },
    dirMatriz: { type: 'string' },
    personas: {collection: 'persona', via: 'empresa'},
    servicios: {collection:'servicio', via: 'empresa'},
    ordenes: {collection:'orden', via: 'empresa'},
    //grupos: {collection:'grupo', via: 'empresa'},
    vehiculos: {collection:'vehiculo', via: 'empresa'},
    
  },

  primaryKey: 'id'

};

