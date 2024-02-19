import Fluent
import Vapor

struct DeveloperController : RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let developer = routes.grouped("developer")
        developer.get(use: get)
    }

    func get(req: Request) async throws -> Developer {
        let calender = Calendar(identifier: .gregorian)
        let date = Date()
        let year = calender.dateComponents([.year], from: date).year ?? 0
        let dayInYear = calender.ordinality(of: .day, in: .year, for: date) ?? 0
        let hourInDay = calender.ordinality(of: .hour, in: .day, for: date) ?? 0

        guard let developer = try await Developer.find((year + dayInYear + hourInDay), on: req.db) else {
            throw Abort(.notFound)
        }

        return developer
    }
}