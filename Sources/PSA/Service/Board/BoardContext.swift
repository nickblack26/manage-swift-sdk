import Foundation

public struct BoardContext: Sendable, Context {
    public typealias Instance = BoardInstance
    public var request: URLRequest

    // MARK: - BOARD STATUSES
    public var statuses: BoardStatusListInstance {
        var r = request
        r.url = request.url!.appendingPathComponent("/statuses")

        return .init(r)
    }
    public func statuses(_ id: Int) -> BoardStatusContext {
        var r = request
        r.url = request.url!.appendingPathComponent("/statuses/\(id)")

        return .init(r)
    }

    // MARK: - BOARD TYPES
    public var types: BoardStatusListInstance {
        var r = request
        r.url = request.url!.appendingPathComponent("/types")

        return .init(r)
    }
    public func types(_ id: Int) -> BoardStatusContext {
        var r = request
        r.url = request.url!.appendingPathComponent("/types/\(id)")

        return .init(r)
    }

    init(_ request: URLRequest) {
        self.request = request
    }
}
