import Fluent
import Vapor

struct Repository : Content {
    struct Licence : Content {
        let key, name, spdx_id: String
        let url: String?
        let node_id: String
    }

    struct Permissions : Content {
        let admin, maintain, push, triage, pull: Bool
    }

    let id: Int

    let node_id, name, full_name: String
    
    // owner

    let html_url: String

    let description: String?

    let fork: Bool

    let url, archive_url, assignees_url, blobs_url: String
    let branches_url, collaborators_url, comments_url: String
    let commits_url, compare_url, contents_url, contributors_url: String
    let deployments_url, downloads_url, events_url, forks_url: String
    let git_commits_url, git_refs_url, git_tags_url, git_url: String
    let issue_comment_url, issue_events_url, issues_url, keys_url: String
    let labels_url, languages_url, merges_url, milestones_url, notifications_url: String
    let pulls_url, releases_url, ssh_url, stargazers_url, statuses_url: String
    let subscribers_url, subscription_url, tags_url, teams_url, trees_url: String
    let clone_url: String

    let mirror_url: String?

    let hooks_url, svn_url: String

    let homepage, language: String?

    let forks_count, stargazers_count, watchers_count, size: Int

    let default_branch: String

    let open_issues_count: Int

    let is_template: Bool

    let topics: [String]

    let has_issues, has_projects, has_wiki, has_pages, has_downloads: Bool
    let has_discussions, archived, disabled: Bool

    let visibility: String

    let pushed_at, created_at, updated_at: String?

    let permissions: Permissions?

    let role_name, temp_clone_token: String?

    let delete_branch_on_merge: Bool?

    let subscribers_count, network_count: Int?

    // code_of_conduct

    let license: Licence?

    let forks, open_issues, watchers: Int

    let allow_forking, web_commit_signoff_required: Bool

    // security_and_analysis
}