import Foundation

public func runCargoMetadata(path: URL? = nil) async throws -> Metadata {
    let process = Process()
    process.currentDirectoryURL = path
    process.executableURL = .init(string: "cargo")!
    process.arguments = ["metadata", "--format-version", "1"]
    fatalError("TODO!")
}
