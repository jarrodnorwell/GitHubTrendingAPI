import Fluent
import Vapor

struct DevelopersController : RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let developers = routes.grouped("developers")
        developers.get(use: get)
        developers.post(use: post)
    }

    func get(req: Request) async throws -> [Developer] {
        let all = try await Developer.query(on: req.db).all()
        if all.isEmpty { throw Abort(.notFound) } else { return all }
    }

    func post(req: Request) async throws -> Developer {
        let developer = Developer(try req.content.decode(DeveloperDTO.self))
        try await developer.create(on: req.db)
        return developer
    }
}