import Fluent
import Vapor

final class Developer : Content, Equatable, Model {
    static let schema = "developers"

    @ID(custom: .id)
    var id: Int?

    @Field(key: "login")
    var login: String

    @Field(key: "node_id")
    var node_id: String

    @Field(key: "avatar_url")
    var avatar_url: String

    @Field(key: "gravitar_id")
    var gravitar_id: String?

    @Field(key: "url")
    var url: String

    @Field(key: "html_url")
    var html_url: String

    @Field(key: "followers_url")
    var followers_url: String

    @Field(key: "following_url")
    var following_url: String

    @Field(key: "gists_url")
    var gists_url: String

    @Field(key: "starred_url")
    var starred_url: String

    @Field(key: "subscriptions_url")
    var subscriptions_url: String

    @Field(key: "organizations_url")
    var organizations_url: String

    @Field(key: "repos_url")
    var repos_url: String

    @Field(key: "events_url")
    var events_url: String

    @Field(key: "received_events_url")
    var received_events_url: String

    @Field(key: "site_admin")
    var site_admin: Bool

    @Field(key: "name")
    var name: String?

    @Field(key: "company")
    var company: String?

    @Field(key: "blog")
    var blog: String?

    @Field(key: "location")
    var location: String?

    @Field(key: "email")
    var email: String?

    @Field(key: "hireable")
    var hireable: Bool?

    @Field(key: "bio")
    var bio: String?

    @Field(key: "twitter_username")
    var twitter_username: String?

    @Field(key: "public_repos")
    var public_repos: Int

    @Field(key: "public_gists")
    var public_gists: Int

    @Field(key: "followers")
    var followers: Int

    @Field(key: "following")
    var following: Int

    @Field(key: "created_at")
    var created_at: String

    @Field(key: "updated_at")
    var updated_at: String

    @Field(key: "repositories")
    var repositories: [Repository]?

    init() { }

    init(_ developerDTO: DeveloperDTO) {
        self.login = developerDTO.login
        self.node_id = developerDTO.node_id
        self.avatar_url = developerDTO.avatar_url
        self.gravitar_id = developerDTO.gravitar_id
        self.url = developerDTO.url
        self.html_url = developerDTO.html_url
        self.followers_url = developerDTO.followers_url
        self.following_url = developerDTO.following_url
        self.gists_url = developerDTO.gists_url
        self.starred_url = developerDTO.starred_url
        self.subscriptions_url = developerDTO.subscriptions_url
        self.organizations_url = developerDTO.organizations_url
        self.repos_url = developerDTO.repos_url
        self.events_url = developerDTO.events_url
        self.received_events_url = developerDTO.received_events_url
        self.site_admin = developerDTO.site_admin
        self.name = developerDTO.name
        self.company = developerDTO.company
        self.blog = developerDTO.blog
        self.location = developerDTO.location
        self.email = developerDTO.email
        self.hireable = developerDTO.hireable
        self.bio = developerDTO.bio
        self.twitter_username = developerDTO.twitter_username
        self.public_repos = developerDTO.public_repos
        self.public_gists = developerDTO.public_gists
        self.followers = developerDTO.followers
        self.following = developerDTO.following
        self.created_at = developerDTO.created_at
        self.updated_at = developerDTO.updated_at
        self.repositories = developerDTO.repositories

        let calender = Calendar(identifier: .gregorian)
        let date = Date()
        let year = calender.dateComponents([.year], from: date).year ?? 0
        let dayInYear = calender.ordinality(of: .day, in: .year, for: date) ?? 0
        let hourInDay = calender.ordinality(of: .hour, in: .day, for: date) ?? 0

        self.id = year + dayInYear + hourInDay
    }

    static func == (lhs: Developer, rhs: Developer) -> Bool {
        lhs.id == rhs.id
    }
}