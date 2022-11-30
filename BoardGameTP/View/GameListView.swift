//
//  GameListView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct GameListView: View {
    var games: [Game]
    
    var body: some View {
        ForEach(games){game in
                NavigationLink(
                    destination: {
                        GameDetailView(
                            game: game
                        )
                    },
                    label: {
                        GameCellView(game: game)
                    })
            }
    }
    }


