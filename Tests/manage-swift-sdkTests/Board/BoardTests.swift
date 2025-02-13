import Testing

@testable import PSASwift

@Test("Initialization of the Board")
func boardInitialization() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    // print()
    let board = try await manage.service.boards(9).fetch()
    let boardStatuses = try await manage.service.boards(9).statuses.list()

    print(board, boardStatuses)

    #expect(board.id == 9)
    #expect(boardStatuses.count > 0)
}
