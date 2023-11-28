import NIOSSL
import Fluent
import FluentMongoDriver
import Vapor

public func configure(_ app: Application) async throws {
    try app.databases.use(DatabaseConfigurationFactory.mongo(
        connectionString: "mongodb://localhost:27017/githubtrendingapi"
    ), as: .mongo)

    app.routes.defaultMaxBodySize = "10000kb"

    try routes(app)
}
