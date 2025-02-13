import Foundation

public struct ServiceClient: Sendable {
    internal let request: URLRequest

    public var tickets: TicketListInstance
    public func tickets(_ id: Int) -> TicketContext {
        var ticketRequest = request
        ticketRequest.url = request.url?.appendingPathComponent("/tickets")

        return .init(ticketRequest)
    }

    public var boards: BoardListInstance
    public func boards(_ id: Int) -> BoardContext {
        var r = request
        r.url = r.url?.appendingPathComponent("/boards/\(id)")

        return .init(r)
    }
    // public let company: TaskrouterClient
    // public let system: TaskrouterClient

    init(
        request: URLRequest
    ) {
        self.request = request

        var ticketRequest = request
        ticketRequest.url = ticketRequest.url?.appendingPathComponent("/tickets")
        self.tickets = .init(ticketRequest)

        var boardRequest = request
        boardRequest.url = boardRequest.url?.appendingPathComponent("/boards")
        self.boards = .init(boardRequest)
        // self.service = .init(username: username, password: password)
        // self.company = .init(username: username, password: password)
        // self.system = .init(username: username, password: password)
    }
}
