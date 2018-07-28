
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    descripcion: { type: 'string' },
    modelos: { collection: 'modelo', via : 'marca' },
    empresa:{model:'empresa'}
  },

  primarykey: 'id'

};

