/**
 * UsuarioController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {

    login: function (req, res) {

        var correo = req.param('correo');
        var password = req.param('password');


        if (!(correo && password)) {
            res.send("No username or password specified!", 500);

        }

        else {

            Persona.findOne({ correo: correo }, function (err, persona) {
                if (err) {
                    return res.notFound('No existe la persona con el correo ingresado');
                } else {
                    if (persona) {

                        Usuario.findOne({ persona: persona.id }).populate('roles').populate('persona').exec(function (err, usuario) {
                            if (err) {
                                return res.notFound('Ocurrió un error');
                            } else {
                                if (usuario) {

                                    if (usuario.password != password) {
                                        return res.notFound('Contraseña incorrecta');
                                    } else {
                                        usuario.roles.forEach(rol => {
                                            switch (rol.id) {
                                                case 1:
                                                    req.session.esAdministrador = true
                                                    break;
                                                case 2:
                                                    req.session.esTecnico = true
                                                    break;
                                                case 3:
                                                    req.session.esAsesor = true
                                                    break;

                                                default:
                                                    break;
                                            }
                                        });

                                        Empresa.findOne({ id: usuario.persona.empresa }, function (err, empresa) {
                                            usuario.persona.empresa = empresa
                                            req.session.usuario = usuario
                                            res.ok(usuario);
                                        })


                                    }
                                } else {
                                    return res.notFound('No existe usuario asociado con el correo ingresado');
                                }
                            }
                        });




                    } else {
                        return res.notFound('No existe la persona con el correo ingresado');
                    }


                }
            })








        }
    }

};

