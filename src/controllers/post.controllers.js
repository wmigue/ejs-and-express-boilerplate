const Post = require('../models').Post
const User = require('../models').User
const controller = {}


controller.getAllPosts = async (req, res) => {
  try {
    //console.log(req.session.isAuthenticated.usuario)
    if (req.session.isAuthenticated.autenticado) {
      const posts = await Post.findAll({
        where: {
          idUser: req.session.isAuthenticated.usuario.id
        },
        include: [{
          model: User, // Debes especificar el modelo User o la relación que corresponda
          as: 'author' // Esto debe coincidir con el alias que hayas definido en tu modelo de asociación
        }]
      })
      console.log(posts)
      return res.render('posts', { posts })
    } else {
      return res.render('common/error', { error: 'Usuario no Logueado.', status: 401 })
    }
  } catch (error) {
    console.log(error)
    return res.status(500).json({ error: 'Error al buscar Posts' })
  }
}



controller.createPost = async (req, res) => {
  console.log(req.session.isAuthenticated.usuario)
  try {
    await Post.create({
      body: req.body.body,
      title: req.body.title,
      imgURL: req.body.imgURL,
      idUser: req.session.isAuthenticated.usuario.id
    })
    res.redirect('back')
    //res.status(201).json(post)
  } catch (error) {
    console.log(error)
    return res.status(500).json({ error: 'Error al crear Post' })
  }
}


controller.deletePost = async (req, res) => {
  try {
    const { id } = req.params
    const buscado = await Post.findByPk(id)
    await buscado.destroy()
    res.redirect('back')
  } catch (error) {
    return res.status(500).json({ error: 'Error al eliminar Post' })
  }
}


controller.getAllPostsFromAllUsers = async (req, res) => {
  try {
    const buscado = await Post.findAll({
      include: [{
        model: User,
        as: 'author'
      }]
    })
    return res.render('posts/todos', { buscado })
  } catch (error) {
    return res.status(500).json({ error: 'Error al traer todos los Post' })
  }
}





module.exports = controller