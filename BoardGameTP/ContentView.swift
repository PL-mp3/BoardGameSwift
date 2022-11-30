//
//  ContentView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = BoardGameViewModel()
    var body: some View {
        TabView{
            TopGamesView(viewModel: viewModel)
                .tabItem {
                    Label("Top games",systemImage: "gamecontroller")
            }
            SearchGameView(viewModel: viewModel)
                .tabItem{Label("Search games",systemImage: "magnifyingglass")}
        }
    }
}
