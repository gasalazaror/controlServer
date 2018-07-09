

module.exports = {

  attributes: {

   id: {type:'number', autoIncrement: true},
   usuario: {model: 'usuario'},
   rol: {model: 'rol'}

  },
  primarykey: 'id'

};

