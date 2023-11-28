import Fluent
import Vapor

final class DeveloperDTO : Content {
    var id: Int?
    var login, node_id, avatar_url: String
    var gravitar_id: String?
    var url, html_url, followers_url, following_url: String
    var gists_url, starred_url, subscriptions_url: String
    var organizations_url, repos_url, events_url: String
    var received_events_url, type: String

    var site_admin: Bool

    var name, company, blog, location, email: String?

    var hireable: Bool?

    var bio, twitter_username: String?

    var public_repos, public_gists, followers, following: Int

    var created_at, updated_at: String

    var repositories: [Repository]?
}