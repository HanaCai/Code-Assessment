//
//  BookListView.swift
//  BookListExample
//
//  Created by Hana Cai on 1/18/2023.
//

import SwiftUI

struct BookListView: View {
    @ObservedObject var viewModel = BooksViewModel()
    @State var selectedAuthor = StringConstant.All
    @State var selectedGenre = StringConstant.All
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Filter by Author", selection: $selectedAuthor) {
                    Text(StringConstant.All).tag(StringConstant.All)
                    ForEach(viewModel.books.map { $0.author}, id: \.self) { author in
                        Text(author).tag(author)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Picker("Filter by Genre", selection: $selectedGenre) {
                    Text(StringConstant.All).tag(StringConstant.All)
                    ForEach(viewModel.books.map { $0.genre}, id: \.self) { genre in
                        Text(genre).tag(genre)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                let bookData = viewModel.books.filter({(self.selectedAuthor == StringConstant.All || $0.author == selectedAuthor) && (self.selectedGenre == StringConstant.All || $0.genre == selectedGenre)})
                List{
                    ForEach(bookData) { book in
                        NavigationLink(destination: BookDetailView(book: book)) {
                            BookRowView(book: book)
                        } .buttonStyle(PlainButtonStyle()) .listRowSeparator(.hidden)
                    }
                }.listStyle(PlainListStyle())
                    .listRowInsets(EdgeInsets())
                    .buttonStyle(PlainButtonStyle())
            }.navigationBarTitle("Books")
                .onAppear {
                    viewModel.fetchComments()
                }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
