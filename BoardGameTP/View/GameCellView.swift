//
//  GameCellView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct GameCellView: View {
    var game: Game
    var body: some View{
        HStack(alignment: VerticalAlignment.top){
                AsyncImage(url: URL(string: game.image)) { phase in
                    switch phase {
                    case .empty:
                        ZStack{
                            Color.clear
                            ProgressView()
                        }
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    default:
                            EmptyView()
                    }
                 }.cornerRadius(10)
                    .frame(width: 100)
            VStack(alignment: .leading){
                HStack{
                    Text(game.name).font(.title3).fontWeight(.bold).padding(1)
                }
                Text(game.description).lineLimit(3).padding(1)
            }
            
        }
        
    }
}

