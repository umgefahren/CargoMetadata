import XCTest
import Foundation
@testable import CargoMetadata

final class CargoMetadataTests: XCTestCase {
    func testCargoOutput() throws {
        let jsonContent = try Data.init(contentsOf: .init(fileURLWithPath: "sample-output.json"))
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let _decodedData = try decoder.decode(Metadata.self, from: jsonContent)
        } catch {
            print(error)
        }
    }
}
