

module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    empresa: { type: 'string' },
    categorias: {collection:'categoria', via: 'padre'},
    servicios: {collection: 'servicio', via: 'categoria'},
    padre: {model: 'categoria'},
  },
  primaryKey: 'id'

};

