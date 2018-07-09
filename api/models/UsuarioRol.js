

module.exports = {

  attributes: {

   id: {type:'number', autoIncrement: true},
   usuario: {model: 'usuario'},
   password: {type: 'string'},
   rol: {model: 'rol'}

  },
  primarykey: 'id'

};

