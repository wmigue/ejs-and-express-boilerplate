const express = require('express')
const { sequelize } = require('./src/models');
const session = require('express-session');
require('dotenv').config();
const userRoutes = require('./src/routes/user.routes')
const postRoutes = require('./src/routes/post.routes');
const { loginUser } = require('./src/controllers/user.controllers');

const server = express()
const port = 3000

server.set('view engine', 'ejs')
server.set('views', __dirname + '/src/views')

// Configura express-session para guardar datos de usuarios logueados por ejemplo en una cookie.
server.use(session({
  secret: process.env.SECRETO_COOKIE_EXPRESS_SESSION,
  resave: false,
  saveUninitialized: true,
  cookie: {
    // expira en x milisegundos.
    maxAge: 60000,
    // Configura la cookie para que expire al cerrar el navegador.
    expires: false,
    // Configura la cookie para que sea una cookie de sesión (no persistente)
    httpOnly: true,
    // Otras opciones de configuración de la cookie
    // ...
  }
}))

server.use(express.json())
server.use(express.urlencoded({ extended: false }))
server.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css'));

server.use('/', userRoutes)
server.use('/user', userRoutes)
server.use('/post', postRoutes)

sequelize
  .authenticate()
  .then(() => {
    console.log('Conexión a la base de datos establecida con éxito');
  })
  .catch((error) => {
    console.error('Error al conectar a la base de datos:', error);
  });

server.listen(port, async () => {
  console.log('Servidor corriendo en el puerto', 3000)

})