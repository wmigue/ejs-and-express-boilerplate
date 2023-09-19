const { getAllUsers, createUser, updateUser, getUserById, deleteUser, renderCreateUser, renderDeleteUser, renderUpdateUser,renderLoginUser, loginUser, logOutUser, registroViewUser, registroUser } = require('../controllers/user.controllers')

const routes = require('express').Router()

routes.get('/', renderLoginUser)
routes.get('/logout', logOutUser)
routes.post('/login', loginUser)
routes.get('/registro', registroViewUser)
routes.post('/registro', registroUser)
// routes.delete('/:id', deleteUser)
// routes.get('/create', renderCreateUser)
// routes.post('/create', createUser)
// routes.get('/delete/:id', renderDeleteUser)
// routes.get('/update/:id', renderUpdateUser)
// routes.post('/update/:id', updateUser)
// routes.get('/:id', getUserById)


module.exports = routes