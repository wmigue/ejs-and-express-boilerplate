const User = require('../models').User
const controller = {}

controller.renderLoginUser = (req, res) => {
  return res.render('users')
}

controller.registroViewUser = (req, res) => {
  return res.render('users/registro')
}



controller.registroUser = async (req, res) => {
  const { fn, ln, email, pass } = req.body
  try {
    const buscado = await User.findOne({
      where: {
        email: email,
      }
    })
    if(!buscado){
      await User.create({firstName: fn, lastName: ln, email: email, password: pass})
      return res.render('common/exito', { mensaje: 'registrado con EXITO!!.' , status: 201 })
    }else{
      return res.render('common/exito', { mensaje: 'Ese email de usuario ya existe, ELIGE OTRO.', status: 409 })
    }
  } catch (error) {
    console.log(error)
    return res.render('common/error', { error: 'Error al crear usuario', status: 500 })
  }
}




controller.loginUser = async (req, res) => {
  const { email, password } = req.body
  try {
    const buscado = await User.findOne({
      where: {
        email: email,
        password: password
      }
    })
    if (buscado) {
      req.session.isAuthenticated = {
        autenticado: true,
        usuario: buscado
      }
      // console.log('Usuario encontrado:', buscado.toJSON())
      //redirecciona posts/index
      res.redirect('/post')
    } else {
      return res.render('common/error', { error: 'Usuario no encontrado.', status: 404 })
    }
  } catch (error) {
    console.log(error)
    return res.render('common/error', { error: 'Error al obtener los usuarios', status: 500 })
  }
}



controller.logOutUser = async (req, res) => {
  req.session.destroy(err => {
    if (err) {
      console.error('Error al destruir la sesión:', err)
      res.status(500).send('Error al cerrar sesión')
    } else {
      res.redirect('/') // Redirige a la página de inicio de sesión o a donde prefieras
    }
  })
}






module.exports = controller

































