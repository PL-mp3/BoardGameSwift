//
//  GameFetcher.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import Foundation

class GameFetcher{
    let url = URL(string: "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=lJifm3g8k3")!
    
    let jsonDecoder = JSONDecoder()
    
    func getTopGames() async throws -> GamesResponse{
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        let gameList = try jsonDecoder.decode(GamesResponse.self, from: data)
        return gameList
    }
}
