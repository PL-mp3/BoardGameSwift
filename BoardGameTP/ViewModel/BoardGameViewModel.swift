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
    @Published var games = [Game]()
    @Published var searchedGames = [Game]()
    
    @Published var gameList = GamesResponse(games: [Game.empty], count: 0)
    
    let gameFetcher = GameFetcher()
    var nbGames = 0
    
    func getGameList() async throws{
        let gameResponse = try await
        gameFetcher.getTopGames(nbGame: nbGames)
        games.append(contentsOf: gameResponse.games)
        nbGames += 30
    }
    
    func getSearchList(search:String) async throws{
        let gameResponse = try await
        gameFetcher.getSearchGames(search: search)
        searchedGames = gameResponse.games
    }
}
