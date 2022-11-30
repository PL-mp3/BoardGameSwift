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
            VStack(alignment: .leading){
                HStack{
                    Text(game.name).font(.title3).fontWeight(.bold).padding(1)
                }
            }
            
        }
        
    }
}

