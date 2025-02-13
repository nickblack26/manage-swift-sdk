import Foundation

public struct BoardTypeInstance: Sendable, Identifiable, Decodable {
    public var id: Int
    public var name: String
    public var inactiveFlag: Bool?
    public var typeAssociationIDS: [Int]?
    public var board: Reference?
    // public var info: BoardStatusInstanceInfo?

    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case inactiveFlag = "inactiveFlag"
        case typeAssociationIDS = "typeAssociationIds"
        case board = "board"
        // case info = "_info"
    }
}
