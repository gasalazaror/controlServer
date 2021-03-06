/**
 * ServicioRepuesto.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    servicio: { model: 'servicio' },
    repuesto: { model: 'repuesto' },
    cantidad: { type: 'number' }
  },
  primaryKey: 'id'
};

