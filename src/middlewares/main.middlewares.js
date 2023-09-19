const middlewares = {}

middlewares.PrincipalMiddleware = (req, res, next) => {
  // console.log('METHOD:', req.method)
  // console.log('PARAMS:', req.params)
  try {
    //si estoy logueado, seguimos con la siguiente funcion.
    if (req.session.isAuthenticated.usuario.id) {
      next()
    }
  } catch (error) {
    //caso contrario error.
    return res.render('common/error', { error: 'Usuario no Logueado.', status: 403 })
  }
}

module.exports = middlewares