//
//  Game.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import Foundation

struct Game{
    let id: Int
    let name: String
    let description: String
    let thumbnail: String
    let image: String
    let price: Double
    let voteAverage: Double
}

extension Game: Identifiable, Hashable {}

extension Game: Codable{
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case description
        case thumbnail = "thumb_url"
        case image = "image_url"
        case price
        case voteAverage = "average_user_rating"
    }
}

struct GamesResponse: Codable{
    let games: [Game]
}

extension Game{
    static var empty: Game{ Game(id:0,name:"",description:"",thumbnail:"",image:"",price:0.0,voteAverage:0.0)
    }
}
