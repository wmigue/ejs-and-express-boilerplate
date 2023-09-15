'use strict';

/** @type {import('sequelize-cli').Migration} */

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
