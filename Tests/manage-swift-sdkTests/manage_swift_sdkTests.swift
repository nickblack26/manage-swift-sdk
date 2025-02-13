import Testing

@testable import PSASwift

@MainActor
let manage: PSAClient = .init(
    companyId: "velo",
    companyUrl: "manage.velomethod.com",
    publicKey: "gzqmu9YTWvMsnNz1",
    privateKey: "mDcuqcDyNosHKFNy",
    clientId: "900822ef-aa1c-4f08-aae6-f070919b56fa"
)

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    // #expect(try await manage.service.tickets.list().count > 0, .init(rawValue: "String"))
}
