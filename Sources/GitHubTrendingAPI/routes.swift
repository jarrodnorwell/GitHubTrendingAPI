import Fluent
import Vapor

func routes(_ app: Application) throws {
    try app.register(collection: DeveloperController())
    try app.register(collection: DevelopersController())
}
