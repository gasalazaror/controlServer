/**
 * OrdenController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {

    ordenes: function (req, res) {
        var empresa = req.param('empresa');

        var ordenes =  Orden.find({ empresa: empresa });

        sails.log('Wow, there are %d users named Finn.  Check it out:', ordenes.length, ordenes);
        return res.json(ordenes);
    }


};

