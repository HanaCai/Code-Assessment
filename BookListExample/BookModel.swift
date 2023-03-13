//
//  BookModel.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import Foundation
import SwiftUI

struct BooksData: Codable,Hashable,Identifiable{
    var id: Int
    var title, author, genre, image: String
}
