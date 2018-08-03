/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */

module.exports.routes = {

  '/': {
    view: 'pages/homepage'
  },

  'POST /login': 'usuario/login',

  'GET /obtenerSesion': function (req, res) {

    if (req.session.usuario) {
      return res.json(req.session.usuario)
    } else {
      return res.json({ estado: false })
    }


  },

  'POST /reporte': function (req, res) {
    var sql = req.param('sql');
    console.log(sql)
    Orden.query(sql, function(error, resultado){
      if(error){
        console.log(error)
        return res.badRequest(
          'Error en la consulta'
        );
      }else{
        return res.ok(resultado);
      }
    })

  }


};
