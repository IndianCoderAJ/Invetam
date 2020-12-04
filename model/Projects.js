module.exports = (sequelize, DataTypes) => {
    const Projects = sequelize.define('Projects', {
        ProjectId: {
            type: DataTypes.UUID,
            primaryKey: true,
            defaultValue: DataTypes.UUIDV4,
            allowNull: false
        },
        projectName: {
            validate: {
                notEmpty: true,
            },
            type: DataTypes.STRING,
            allowNull: false
        },
        details: {
            type: DataTypes.TEXT,
            // allowNull: false
        },
        AssignTo: {
            type: DataTypes.UUID,
            allowNull: false
        },
        status: {
            type: DataTypes.ENUM,
            values: ['Active', 'Deactive', 'Completed'],
            allowNull: false
        },
        startDate: {
            type: DataTypes.DATE,
            allowNull: false
        },
        completionDate: {
            type: DataTypes.DATE,
            allowNull: false
        },
        isDeleted: {
            type: DataTypes.BOOLEAN,
            defaultValue: false
                // allowNull: false
        },
    });
    return Projects;
}