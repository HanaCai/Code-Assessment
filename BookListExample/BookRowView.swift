//
//  BookRowView.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import SwiftUI

struct BookRowView: View {
    var book: BooksData
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(book.title)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
                Text(book.author)
                    .fontWeight(.regular)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                Text(book.genre)
                    .fontWeight(.regular)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
            }
            .padding()
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(
            color: Color.gray.opacity(0.7),
            radius: 8,
            x: 0,
            y: 0
        )
    }
}
