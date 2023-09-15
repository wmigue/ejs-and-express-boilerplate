const { getAllPosts, getAllPostsFromAllUsers, createPost, deletePost } = require('../controllers/post.controllers')

const routes = require('express').Router()


routes.get('/', getAllPosts)
routes.get('/todos', getAllPostsFromAllUsers)
routes.post('/', createPost)
routes.get('/eliminar/:id', deletePost)



module.exports = routes