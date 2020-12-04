'use strict'

module.exports = (sequelize, DataTypes) => {
    const Users = sequelize.define('Users', {
        UserId: {
            type: DataTypes.UUID,
            primaryKey: true,
            defaultValue: DataTypes.UUIDV4,
            allowNull: false
        },
        firstName: {
            type: DataTypes.STRING,
            validate: {
                notEmpty: true,
            },
            allowNull: false,
        },
        lastName: {
            validate: {
                notEmpty: true,
            },
            type: DataTypes.STRING,
            allowNull: false
        },
        email: {
            validate: {
                notEmpty: true,
                isEmail: true,
            },
            type: DataTypes.STRING,
            unique: true
        },
        password: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        role: {
            type: DataTypes.STRING,
            allowNull: false
        },
        isDeleted: {
            type: DataTypes.BOOLEAN,
            defaultValue: false
        },
    });
    return Users;
}