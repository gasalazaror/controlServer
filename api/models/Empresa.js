module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    razonSocial: { type: 'string' },
    nombreComercial: { type: 'string',  unique:true },
    ruc: { type: 'string' , maxLength:13, maxLength:13 },
    dirMatriz: { type: 'string' },
    personas: {collection: 'persona', via: 'empresa'},
    servicios: {collection:'servicio', via: 'empresa'},
    ordenes: {collection:'orden', via: 'empresa'},
    operadores: {collection:'operador', via: 'empresa'},
    vehiculos: {collection:'vehiculo', via: 'empresa'},
    marcas: {collection: 'marca', via: 'empresa'}
 
    
  },


  primaryKey: 'id',

  

};

