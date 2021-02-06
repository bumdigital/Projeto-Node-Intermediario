const mysql = require('mysql')
const connect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    passport: '',
    database: 'amigaopet'
})

module.exports = connect