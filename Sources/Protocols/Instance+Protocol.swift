import Foundation

public protocol ListInstance: Sendable {
    // associatedtype Instance: Decodable, Identifiable where Instance.ID == String
    associatedtype Instance: Decodable, Identifiable where Instance.ID == Int
    associatedtype ListInstance: Decodable = [Instance]

    var request: URLRequest { get }

    func create() async throws -> Instance
    func list() async throws -> ListInstance
}

extension ListInstance {
    public func create() async throws -> Instance {
        var r = request
        r.httpMethod = "POST"
        let (data, _) = try await URLSession.shared.data(for: r)
        return try JSONDecoder().decode(Instance.self, from: data)
    }

    public func list() async throws -> ListInstance {
        let (data, _) = try await URLSession.shared.data(for: request)

        return try JSONDecoder().decode(ListInstance.self, from: data)
    }
}
