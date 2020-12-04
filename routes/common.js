const express = require('express');
const router = express.Router();
const db = require('../config/database');
const Users = require('../model/Users');
const Projects = require('../model/Projects');
const Tasks = require('../model/Tasks');

router.get('/getProject/:projectID', async(req, res) => {
    try {
        const ProjectsData = await db.Projects.findAll({
            where: {
                ProjectId: req.params.projectID
            },
            attributes: { exclude: ['ProjectId'] },
            include: [{
                model: db.Tasks
            }]
        });
        return res.status(200).json(ProjectsData);
    } catch (Err) {
        console.log(Err);
        return res.status(500).json({ message: "server error" });
    }
})

router.get('/projectsWithUser', async(req, res) => {
    try {
        const ProjectsData = await db.Projects.findAll({
            offset: 2,
            limit: 6,
            include: [{
                model: db.Users
            }]
        });
        return res.status(200).json(ProjectsData);
    } catch (Err) {
        console.log(Err);
        return res.status(500).json({ message: "server error" });
    }
})

router.get('/allProjects', async(req, res) => {
    try {
        const ProjectsData = await db.Projects.findAll({
            include: [{
                model: db.Tasks
            }]
        });

        return res.status(200).json(ProjectsData);

    } catch (Err) {
        console.log(Err);
        return res.status(500).json({ message: "server error" });
    }
})

module.exports = router;