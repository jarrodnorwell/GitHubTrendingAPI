import Fluent
import Vapor

struct DevelopersController : RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let developers = routes.grouped("developers")
        developers.post(use: post)
    }

    func post(req: Request) async throws -> Developer {
        let developer = Developer(try req.content.decode(DeveloperDTO.self))
        try await developer.create(on: req.db)
        return developer
    }
}