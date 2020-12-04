'use strict'

module.exports = (sequelize, DataTypes) => {
    const Tasks = sequelize.define('Tasks', {
        taskId: {
            type: DataTypes.UUID,
            primaryKey: true,
            defaultValue: DataTypes.UUIDV4,
            allowNull: false
        },
        taskName: {
            validate: {
                notEmpty: true,
            },
            type: DataTypes.STRING,
            allowNull: false
        },
        details: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        project: {

            type: DataTypes.UUID,
            allowNull: false
        },
        startDate: {
            type: DataTypes.DATE,
            allowNull: false
        },
        status: {
            type: DataTypes.ENUM,
            values: ['Active', 'Deactive', 'Completed'],
            allowNull: false
        },
        targetcomplationDate: {
            type: DataTypes.DATE,
            allowNull: false
        },
        completionDate: {
            type: DataTypes.DATE,
            allowNull: false
        },
        assignTo: {
            type: DataTypes.UUID,
            allowNull: false
        },
        isDeleted: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: false
        },
    });
    return Tasks
}