//
//  GameDetailView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct GameDetailView: View {
    var game: Game
    
    var body: some View {
        HStack(alignment: VerticalAlignment.top){
            VStack(alignment: HorizontalAlignment.leading){
                Text(game.name).font(.largeTitle).fontWeight(.bold)
                AsyncImage(url: URL(string: game.image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    default:
                            EmptyView()
                    }
                }
                .frame(width: 200)
                
                Text(game.description).lineLimit(5)
                Spacer()
            }
        }.padding()
    }
}

