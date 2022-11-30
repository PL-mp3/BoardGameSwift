//
//  TopGamesView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct TopGamesView: View {
    @ObservedObject var viewModel: BoardGameViewModel
    var body: some View {
        NavigationView{
            List{
                GameListView(games: viewModel.games)
                    .navigationTitle(Text("Top games"))
                ProgressView()
                    .onAppear(){
                        Task{
                            try? await viewModel.getGameList()
                        }
                    }
            }
            
        }
    }
}

