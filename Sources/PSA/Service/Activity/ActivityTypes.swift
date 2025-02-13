import Foundation

// MARK: - ActivityInstance

public struct ActivityInstance: Identifiable, Decodable, Sendable {
    public var id: Int
    public var name: String?
    public var type: Reference?
    public var company: Reference?
    public var contact: Reference?
    public var phoneNumber: String?
    public var String: String?
    public var status: Reference?
    public var opportunity: Reference?
    public var ticket: TicketInstance?
    public var agreement: Reference?
    public var campaign: Reference?
    public var notes: String?
    public var dateStart: String?
    public var dateEnd: String?
    public var assignedBy: Reference?
    public var assignTo: Reference?
    public var scheduleStatus: Reference?
    public var reminder: Reference?
    public var activityInstanceWhere: Reference?
    public var notifyFlag: Bool?
    public var mobileGUID: String?
    public var currency: Reference?
    // public var info: Info?
    // public var customFields: [CustomField]?

    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case company = "company"
        case contact = "contact"
        case phoneNumber = "phoneNumber"
        case String = "String"
        case status = "status"
        case opportunity = "opportunity"
        case ticket = "ticket"
        case agreement = "agreement"
        case campaign = "campaign"
        case notes = "notes"
        case dateStart = "dateStart"
        case dateEnd = "dateEnd"
        case assignedBy = "assignedBy"
        case assignTo = "assignTo"
        case scheduleStatus = "scheduleStatus"
        case reminder = "reminder"
        case activityInstanceWhere = "where"
        case notifyFlag = "notifyFlag"
        case mobileGUID = "mobileGuid"
        case currency = "currency"
        // case info = "_info"
        // case customFields = "customFields"
    }
}
