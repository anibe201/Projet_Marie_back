module.exports = {
    port: process.env.PORT || 5000,
    db: {
        database: process.env.DB_NAME || "formation_backend_node",
        user: process.env.DB_USER || "root",
        password: process.env.DB_PASS || "",
        dialect: process.env.DIALECT || "mysql",
        host: process.env.HOST || "localhost",
        storage: "./sql_database.sql"
    },
    authentication: {
        jwtSecret : process.env.JWT_SECRET || 'secret'
    }
}
