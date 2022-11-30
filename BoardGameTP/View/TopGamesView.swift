//
//  TopGamesView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct TopGamesView: View {
    var body: some View {
        NavigationView{
            List{
                Text("Game list view")
                    .navigationTitle(Text("Top games"))
            }
        }
    }
}

struct TopGamesView_Previews: PreviewProvider {
    static var previews: some View {
        TopGamesView()
    }
}
