 
# [ Trabajo Final ARG PROGRAMA EPICA  ]

## dni: 32328737
## alumno: Villalba Canavesio Miguel
## email: wmigue@gmail.com 


## Funcionamiento basico de la app:
- los usuarios pueden crear/leer/modificar/eliminar sus posts.
- los usuarios deben registrarse / loguearse para poder postear.
- se utilizaron sesiones para validar usuarios con libreria express-session.
- levantar la aplicacion en desarrollo con: 
```bash
npm run dev 
```

# INSTRUCTIVO BASICO ORM (sequelize)
 
## Instalar sequelize, sequelize-cli y mysql2:
npm install sequelize sequelize-cli mysql2

## Inicializa Sequelize
npx sequelize-cli init

## Crea un modelo y una migración
npx sequelize-cli model:generate --name User --attributes firstName:string,lastName:string,email:string

## migrar base de datos(crear en mysql)
npx sequelize-cli db:migrate

## Agregar una columna a una de las tablas.
Si deseas crear la columna "imgURL" en la tabla de la base de datos MySQL correspondiente al modelo "Post" (por ejemplo) que has definido en Sequelize, puedes hacerlo de la siguiente manera:


```bash
npx sequelize-cli migration:generate --name addImgURLToPosts
```

Reemplaza "addImgURLToPosts" con un nombre descriptivo para la migración.

    Edita la migración:

Abre el archivo de migración recién creado en la carpeta "migrations". En el método up, agrega el código para agregar la columna "imgURL" a la tabla "posts". Aquí tienes un ejemplo:

```json
'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addColumn('Posts', 'imgURL', {
      type: Sequelize.STRING,
      allowNull: true, // Opciones dependiendo de tu requerimiento
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeColumn('Posts', 'imgURL');
  }
};

```

Aplica la migración:

Ejecuta el siguiente comando para aplicar la migración y agregar la columna "imgURL" a la tabla "Posts" en tu base de datos MySQL:

```bash
npx sequelize-cli db:migrate
```

Después de ejecutar esta migración, la columna "imgURL" se creará en la tabla "Posts" de tu base de datos MySQL y estará disponible para su uso en tu aplicación Sequelize. Asegúrate de que tu configuración de Sequelize esté correctamente conectada a tu base de datos MySQL antes de ejecutar la migración.



# COMO USAR / EMBEBER EJS EN JS 

```
//EJEMPLO1:
<script>
     //ejemplo ejs en script (solo ejemplo como embeber ejs en js)
        let data = <%- JSON.stringify(posts) %>
        console.log(data)
</script>

```