//
//  Game.swift
//  BoardGameTP
//
//  Created by Pierre-Louis Vergely on 30/11/2022.
//

import Foundation

struct Game{
    let id: String
    let name: String
    let description: String
    let thumbnail: String
    let image: String
    let price: String
    let voteAverage: Double
}

extension Game: Identifiable, Hashable {}

extension Game: Codable{
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case description = "description_preview"
        case thumbnail = "thumb_url"
        case image = "image_url"
        case price
        case voteAverage = "average_user_rating"
    }
}

extension Game{
    static var empty: Game{
        return Game(id:"",name:"",description:"",thumbnail:"",image:"",price:"",voteAverage:0.0)
    }
}

struct GamesResponse: Codable{
    let games: Array<Game>
    let count: Int
}
