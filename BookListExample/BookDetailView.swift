//
//  BookDetailView.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import SwiftUI

struct BookDetailView: View {
    var book: BooksData
    
    var body: some View {
        VStack {
            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
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
        .navigationBarTitle(book.title)
    }
}
struct backButtonView : View{
    var title : String
    var body: some View{
        HStack{
            Image(systemName: "chevron.left")
                .foregroundColor(Color.black)
                .padding(5)
            Text(title)
        }
    }
}
