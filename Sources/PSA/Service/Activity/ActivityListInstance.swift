import Foundation

public struct ActivityListInstance: ListInstance, Sendable {
    public typealias Instance = ActivityInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
