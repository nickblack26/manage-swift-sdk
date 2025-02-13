import Foundation

public struct ActivityContext: Context, Sendable {
    public typealias Instance = ActivityInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
