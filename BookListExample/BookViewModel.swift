//
//  BookViewModel.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import Foundation
import SwiftUI

class BooksViewModel: ObservableObject {
    let databaseHandler: BooksDelegate
    
    init(
         databaseHandler: BooksDelegate = DatabaseHandler()) {
        self.databaseHandler = databaseHandler
    }
    
    @Published var books = [BooksData]()
    
    func fetchComments()  {
            databaseHandler.getBooks { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let books):
                        print("Fetched new Books")
                        self.books = books
                        
                    case .failure(let error):
                        print(error)
                    }
                }
                
            }
    }
}
