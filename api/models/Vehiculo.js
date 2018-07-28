
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    marca: { type: 'string' },
    modelo: { type: 'string' },
    numeroChasis: { type: 'string' },
    numeroMotor: { type: 'string' },
    placa: { type: 'string' },
    color: { type: 'string' },
    transmision: { type: 'string' },
    tipoEnergia: { type: 'string' },
    clase: {type: 'string'},
    tipo: {type: 'string'},
    anioFabricacion: {type: 'string'},
    procedencia: {type: 'string'},
    carr: {type: 'string'},
    comb: {type: 'string'},
    pasajeros: {type: 'number'},
    ordenes: {collection: 'orden', via: 'vehiculo'},
    empresa: { model: 'empresa' },
    clientes: { collection: 'cliente', via: 'vehiculos' },
    dueno: {model: 'cliente'},
  },

  primaryKey: 'id',

  beforeCreate: function (vehiculo, proceed) {

    if(vehiculo.marca){vehiculo.marca = vehiculo.marca.toUpperCase()}
    if(vehiculo.modelo){vehiculo.modelo = vehiculo.modelo.toUpperCase()}
    if(vehiculo.numeroChasis){vehiculo.numeroChasis = vehiculo.numeroChasis.toUpperCase()}
    if(vehiculo.numeroMotor){vehiculo.numeroMotor = vehiculo.numeroMotor.toUpperCase()}
    if(vehiculo.placa){vehiculo.placa = vehiculo.placa.toUpperCase()}
    if(vehiculo.color){vehiculo.color = vehiculo.color.toUpperCase()}

    return proceed();
  }

};

