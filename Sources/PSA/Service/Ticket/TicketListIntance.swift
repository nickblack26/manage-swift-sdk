import Foundation

public struct TicketListInstance: ListInstance, Sendable {
    public typealias Instance = TicketInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
