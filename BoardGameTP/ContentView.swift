//
//  ContentView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TopGamesView()
                .tabItem {
                    Label("Top games",systemImage: "gamecontroller")
            }
            SearchGameView()
                .tabItem{Label("Search games",systemImage: "magnifyingglass")}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
