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
            VStack{
                Text(game.description)
            }
            
        }
    }
    }

