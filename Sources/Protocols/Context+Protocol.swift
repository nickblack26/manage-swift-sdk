import Foundation

public protocol Context {
    associatedtype Instance: Decodable, Identifiable where Instance.ID == Int

    var request: URLRequest { get }

    func fetch() async throws -> Instance
    func remove() async throws -> Bool
}

extension Context {
    public func fetch() async throws -> Instance {
        let (data, _) = try await URLSession.shared.data(for: request)
        let decodedData: Instance = try JSONDecoder().decode(Instance.self, from: data)
        return decodedData
    }

    public func remove() async -> Bool {
        do {
            var request = self.request
            request.httpMethod = "DELETE"
            let _ = try await URLSession.shared.data(for: request)
            return true
        } catch {
            print(error)
            return false
        }
    }
}
