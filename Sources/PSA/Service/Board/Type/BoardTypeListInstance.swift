import Foundation

struct BoardTypeListInstance: Sendable, ListInstance {
    public typealias Instance = BoardTypeInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
