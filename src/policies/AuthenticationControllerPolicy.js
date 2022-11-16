const Joi = require('joi')

module.exports = {
    register(req, res, next) {
        const schema = Joi.object({
            firstName: Joi.string().regex(new RegExp('^.{2,32}$')),
            lastName: Joi.string().regex(new RegExp('^.{2,32}$')),
            email: Joi.string().email(),
            password: Joi.string().regex(
                new RegExp('^[a-zA-z0-9]{8,32}$')
            ),
        })

        const validate = schema.validate(req.body)
        if (validate.error) {
            switch (validate.error.details[0].context.key) {
                case 'firstName':
                    res.status(400).send({
                        error: `Le prénom dois contenir entre 2 et 32 charactères`
                    })
                    break
                case 'lastName':
                    res.status(400).send({
                        error: `Le nom dois contenir entre 2 et 32 charactères`
                    })
                    break
                case 'email':
                    res.status(400).send({
                        error: "S'ils vous plaît entré un email valide "
                    })
                    break
                case 'password':
                    res.status(400).send({
                        error: `Format de mot de passe invalide<br>
                        Seuls les minuscules, les majuscules et les chiffres sont autorisés.
                        `
                    })
                    break
                default:
                    console.log(validate)
                    res.status(400).send({
                        error: "Erreur non valide dans le contrôleur d'authentification."
                    })
            }
        } else {
            next()
        }
    },
    updatePassword(req, res, next) {
        const schema = Joi.object({
            password: Joi.string().regex(
                new RegExp('^[a-zA-z0-9]{8,32}$')
            ),
        })
        const validate = schema.validate(req.body)
        if (validate.error) {
            switch (validate.error.details[0].context.key) {
                case "password":
                    res.status(400).send({
                        error: 'Format de mot de passe invalide. Seuls les minuscules, les majuscules et les chiffres sont autorisés.'
                    })
                    break;
                default:
                    console.log(validate)
                    res.status(400).send({
                        error: "Erreur non valide dans le contrôleur d'authentification."
                    })
            }
        } else {
            next()
        }
    }
}