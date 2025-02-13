import Foundation

public struct BoardStatusInstance: Identifiable, Decodable, Sendable {
    public var id: Int
    public var name: String
    public var board: Reference?
    public var sortOrder: Int?
    public var displayOnBoard: Bool?
    public var inactive: Bool?
    public var closedStatus: Bool?
    public var timeEntryNotAllowed: Bool?
    public var roundRobinCatchall: Bool?
    public var defaultFlag: Bool?
    public var escalationStatus: String?
    public var customerPortalDescription: String?
    public var customerPortalFlag: Bool?
    public var emailTemplate: Reference?
    public var statusIndicator: Reference?
    public var customStatusIndicatorName: String?
    // public var info: Info?
    public var saveTimeAsNote: Bool?

    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case board = "board"
        case sortOrder = "sortOrder"
        case displayOnBoard = "displayOnBoard"
        case inactive = "inactive"
        case closedStatus = "closedStatus"
        case timeEntryNotAllowed = "timeEntryNotAllowed"
        case roundRobinCatchall = "roundRobinCatchall"
        case defaultFlag = "defaultFlag"
        case escalationStatus = "escalationStatus"
        case customerPortalDescription = "customerPortalDescription"
        case customerPortalFlag = "customerPortalFlag"
        case emailTemplate = "emailTemplate"
        case statusIndicator = "statusIndicator"
        case customStatusIndicatorName = "customStatusIndicatorName"
        // case info = "_info"
        case saveTimeAsNote = "saveTimeAsNote"
    }
}
