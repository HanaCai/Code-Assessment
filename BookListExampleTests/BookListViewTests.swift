//
//  BookListViewTests.swift
//  BookListExampleTests
//
//  Created by Hana Cai on 1/18/2023.
//

import XCTest
@testable import BookListExample

final class BookListViewTests: XCTestCase {
    var subject = BookListView()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    func testBookListView() throws {
        
        XCTAssertNotNil(subject.viewModel.books)
        let sut = BooksViewModel(databaseHandler: DatabaseHandler())
        sut.fetchComments()
        XCTAssert(sut.books.count == 0)
//        XCTAssertNil(subject.viewModel.books)
//        XCTAssertEqual(subject.viewModel.books.first, BooksData(id: 1, title: "Book 1", author: "Author 1", genre: "Genre 1", image: "book1"))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
