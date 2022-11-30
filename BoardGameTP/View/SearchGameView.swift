//
//  SearchGameView.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import SwiftUI

struct SearchGameView: View {
    var body: some View {
        NavigationView{
            List{
                Text("Search game view")
                    .navigationTitle(Text("Search games"))
            }
        }
    }
}

struct SearchGameView_Previews: PreviewProvider {
    static var previews: some View {
        SearchGameView()
    }
}
