import Foundation

public struct BoardStatusContext: Sendable, Context {
    public typealias Instance = BoardInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
