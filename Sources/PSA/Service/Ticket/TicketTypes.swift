import Foundation

public struct TicketInstance: Identifiable, Codable, Hashable, Sendable {
    public var id: Int
    public var summary: String?
    public var recordType: String?
    public var board, status, workRole, workType: Reference?
    public var company, site: Reference?
    public var siteName, addressLine1, addressLine2, city: String?
    public var stateIdentifier, zip: String?
    public var country, contact: Reference?
    public var contactName, contactPhoneNumber, contactPhoneExtension, contactEmailAddress: String?
    public var type, subType, item, team: Reference?
    public var owner: Reference?
    public var priority: Reference?
    public var serviceLocation, source: Reference?
    public var requiredDate: String?
    public var budgetHours: Int?
    public var opportunity: Reference?
    public var agreement: Reference?
    public var severity, impact: String?
    public var poNumber: Reference?
    public var externalXRef: String?
    public var knowledgeBaseCategoryID, knowledgeBaseSubCategoryID: Int?
    public var allowAllClientsPortalView, customerUpdatedFlag, automaticEmailContactFlag,
        automaticEmailResourceFlag: Bool?
    public var automaticEmailCcFlag: Bool?
    public var automaticEmailCc, initialDescription, initialInternalAnalysis,
        initialResolution: String?
    public var initialDescriptionFrom, contactEmailLookup: String?
    public var processNotifications, skipCallback: Bool?
    public var closedDate, closedBy: String?
    public var closedFlag: Bool?
    public var actualHours: Int?
    public var approved: Bool?
    public var estimatedExpenseCost, estimatedExpenseRevenue, estimatedProductCost,
        estimatedProductRevenue: Int?
    public var estimatedTimeCost, estimatedTimeRevenue: Int?
    public var billingMethod: String?
    public var billingAmount, hourlyRate: Int?
    public var subBillingMethod: String?
    public var subBillingAmount: Int?
    public var subDateAccepted, dateResolved, dateResplan, dateResponded: String?
    public var resolveMinutes, resPlanMinutes, respondMinutes: Int?
    public var isInSla: Bool?
    public var knowledgeBaseLinkID: Int?
    public var resources: String?
    public var parentTicketID: Int?
    public var hasChildTicket, hasMergedChildTicketFlag: Bool?
    public var knowledgeBaseLinkType, billTime, billExpenses, billProducts: String?
    public var predecessorType: String?
    public var predecessorID: Int?
    public var predecessorClosedFlag: Bool?
    public var lagDays: Int?
    public var lagNonworkingDaysFlag: Bool?
    public var estimatedStartDate: String?
    public var duration: Int?
    public var location, department: Reference?
    public var mobileGUID: String?
    public var sla: Reference?
    public var slaStatus: String?
    public var requestForChangeFlag: Bool?
    public var currency: Reference?
    public var mergedParentTicket: Reference?
    public var integratorTags: [String]?
    public var escalationStartDateUTC: String?
    public var escalationLevel, minutesBeforeWaiting, respondedSkippedMinutes,
        resplanSkippedMinutes: Int?
    public var respondedHours: Int?
    public var respondedBy: String?
    public var resplanHours: Int?
    public var resplanBy: String?
    public var resolutionHours: Int?
    public var resolvedBy: String?
    public var minutesWaiting: Int?

    public init(id: Int) {
        self.id = id
    }
}

public struct Reference: Codable, Identifiable, Hashable, Sendable {
    public var id: Int
    public var name: String?
    public var identifier: String?
    public var type: String?
    // var _info: [String: AnyCodable]?

    public init(
        id: Int,
        name: String? = nil,
        identifier: String? = nil,
        type: String? = nil
    ) {
        self.id = id
        self.name = name
        self.identifier = identifier
        self.type = type
    }
}
