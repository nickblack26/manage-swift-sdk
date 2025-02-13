import Foundation

public struct BoardStatusListInstance: Sendable, ListInstance {
    public typealias Instance = BoardStatusInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
