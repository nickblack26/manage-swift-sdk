import Foundation

public struct TicketContext: Context, Sendable {
    public typealias Instance = TicketInstance

    public var request: URLRequest

    init(_ request: URLRequest) {
        self.request = request
    }
}
