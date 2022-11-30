//
//  BoardGameViewModel.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import Foundation
import SwiftUI

@MainActor
class BoardGameViewModel: ObservableObject {
    @Published var game = Game.empty
    @Published var gameList = GamesResponse(games: [Game.empty])
}
