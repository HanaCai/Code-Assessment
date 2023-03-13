//
//  DatabaseHandler.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import Foundation
enum DemoError: Error {
    case DecodingError
}
class DatabaseHandler: BooksDelegate {
    func getBooks(completion: @escaping (Result<[BooksData], DemoError>) -> Void) {
        guard let url = Bundle.main.url(forResource: "Books", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let model = try? JSONDecoder().decode([BooksData].self, from: data) else {
                  return completion(.failure(.DecodingError))
              }
        completion(.success(model))
    }
    
}
