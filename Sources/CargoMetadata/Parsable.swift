import Semver

public struct Metadata: Codable {
    let packages: [Package]
    let workspaceMembers: [String]
    let workspaceRoot: String
    let targetDirectory: String
}

public struct Package: Codable {
    let name: String
    let version: Semver
    let authors: [String]
    let id: String
    let source: String?
    let description: String?
    let license: String?
    let license_file: String?
    let targets: [Target]
    let features: [String : [String]]?
    let manifestPath: String
    let categories: [String]?
    let keywords: [String]?
    let readme: String?
    let repository: String?
    let homepage: String?
    let documentation: String?
    let edition: Edition
    let links: String?
    let publish: [String]?
    let defaultRun: String?
    let rustVersion: String?
}


public struct Target: Codable {
    let name: String
    let kind: [String]
    let crateTypes: [String]
    let requiredFeatures: [String]?
    let srcPath: String
    let edition: Edition
    let doctest: Bool
    let test: Bool
    let doc: Bool
}

public enum Edition: String, Codable {
    case E2015 = "2015"
    case E2018 = "2018"
    case E2021 = "2021"
}
