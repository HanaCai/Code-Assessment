//
//  BooksViewService.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import Foundation
protocol BooksDelegate {
    func getBooks(completion: @escaping(Result<[BooksData], DemoError>) -> Void)
}
