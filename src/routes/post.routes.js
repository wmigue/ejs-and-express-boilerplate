const { getAllPosts, getAllPostsFromAllUsers, createPost, deletePost, editarPost } = require('../controllers/post.controllers')
const middlewares = require('../middlewares/main.middlewares')

const routes = require('express').Router()


routes.get('/', getAllPosts)
routes.get('/todos', getAllPostsFromAllUsers)
routes.post('/', middlewares.PrincipalMiddleware, createPost)
routes.post('/editar', middlewares.PrincipalMiddleware, editarPost)
routes.get('/eliminar/:id', middlewares.PrincipalMiddleware, deletePost)



module.exports = routes