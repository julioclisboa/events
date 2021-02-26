const db = require('./db');

async function getUsers(){
    const result = await db.getUsers();
    const users = {};

    users.listUsers = (req,res) => {
        res.status(200).json(result);
    }

    return users;
}