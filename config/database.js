const { Sequelize } = require('sequelize');
const dotenv = require('dotenv').config();



const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USERNAME, process.env.DB_PASSWORD, {
    host: 'localhost',
    dialect: 'mysql'
});

sequelize.authenticate()
    .then(res => console.log("database is connected.."))
    .catch(Err => console.log(Err))


const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.Users = require('../model/Users.js')(sequelize, Sequelize);
db.Projects = require('../model/Projects.js')(sequelize, Sequelize);
db.Tasks = require('../model/Tasks.js')(sequelize, Sequelize);


// //Relations
db.Projects.hasMany(db.Tasks, { foreignKey: 'project' });
db.Tasks.belongsTo(db.Projects, { foreignKey: 'project' });
db.Projects.belongsTo(db.Users, { foreignKey: 'AssignTo' });
db.Users.hasMany(db.Projects, { foreignKey: 'AssignTo' });

module.exports = db;