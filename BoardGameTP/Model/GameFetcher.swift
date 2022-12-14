//
//  GameFetcher.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import Foundation

class GameFetcher{
    let url = "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=lJifm3g8k3";
    
    let jsonDecoder = JSONDecoder()
    
    func getTopGames(nbGame:Int) async throws -> GamesResponse{
        let request = URLRequest(url: URL(string: url + "&skip=\(nbGame)")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let gameList = try jsonDecoder.decode(GamesResponse.self, from: data)
        return gameList
    }
    
    func getSearchGames(search:String) async throws -> GamesResponse{
        let request = URLRequest(url: URL(string: url + "&name=\(search.replacingOccurrences(of: " ", with: "%20"))")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let gameList = try jsonDecoder.decode(GamesResponse.self, from: data)
        return gameList
    }
}
