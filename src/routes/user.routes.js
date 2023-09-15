const { getAllUsers, createUser, updateUser, getUserById, deleteUser, renderCreateUser, renderDeleteUser, renderUpdateUser,renderLoginUser, loginUser, logOutUser } = require('../controllers/user.controllers')

const routes = require('express').Router()

routes.get('/', renderLoginUser)
routes.get('/logout', logOutUser)
routes.post('/login', loginUser)
routes.get('/create', renderCreateUser)
routes.post('/create', createUser)
routes.get('/delete/:id', renderDeleteUser)
routes.get('/update/:id', renderUpdateUser)
routes.post('/update/:id', updateUser)
// routes.get('/:id', getUserById)
routes.delete('/:id', deleteUser)

module.exports = routes