const {Client, Pool} = require('pg')
const client = new Client({
    database: 'df38uhr2n5kgfo',
    host: 'ec2-50-16-197-244.compute-1.amazonaws.com',
    user: 'uikznrlazcqvje',
    password: '6e9cd7ed1c27294d105d007ca1020bd0490a23282322a387590b99da5e57450b',
    port: 5432,
    ssl: true
})

client.connect()
module.exports = client