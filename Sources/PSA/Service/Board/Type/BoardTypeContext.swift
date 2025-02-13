import Foundation

public struct BoardTypeContext: Sendable, Context {
    public typealias Instance = BoardTypeInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
