const { Pool } = require('pg');
const dbconfig = require('../config/default.json');

async function connect(){
    if(global.connection){
        return global.connection.connect();
    }

    const stringDB = `
        ${dbconfig.database.user}:${dbconfig.database.password}@${dbconfig.database.ip}:${dbconfig.database.port}/${dbconfig.database.database}
        `;
    const pool = new Pool({
        connectionString: 'postgres://' + stringDB
    });

    const client = await pool.connect();
    console.log('Conectado com sucesso!');
    client.release();
    global.connection = pool;
    return pool.connect();
};

async function getUsers(){
    const client = await connect();
    const result = client.query('SELECT * FROM tb_users;');
    client.release();
    return result.rows;
}