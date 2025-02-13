import Foundation

public struct BoardListInstance: Sendable, ListInstance {
    public typealias Instance = BoardInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
