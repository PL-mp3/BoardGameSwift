//
//  SearchGameView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct SearchGameView: View {
    @ObservedObject var viewModel: BoardGameViewModel
    @State var searchText = ""
    var body: some View {
        NavigationView{
            List{
                GameListView(games: viewModel.searchedGames)
                    
            }.navigationTitle(Text("Search games"))
                .searchable(text: $searchText)
                .onChange(of: searchText){_ in
                    Task{
                        try? await viewModel.getSearchList(search: searchText)
                    }
                }
        }
    }
}
