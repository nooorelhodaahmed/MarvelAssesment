//
//  MarvelDetailsModel.swift
//  MarvelAssessment
//
//  Created by norelhoda on 26/02/2024.
//

import Foundation

struct MarvelDetailsModel :Codable {
    let code : Int?
    let status : String?
    let data : Data?
    
    enum CodingKeys: String, CodingKey {

        case code = "code"
        case status = "status"
        case data = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(Int.self, forKey: .code)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        data = try values.decodeIfPresent(Data.self, forKey: .data)
    }
}

struct Data : Codable {
    let results : [Results]?

    enum CodingKeys: String, CodingKey {
        case results = "results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        results = try values.decodeIfPresent([Results].self, forKey: .results)
    }
}

struct Results : Codable {
    let id : Int?
    let title : String?
    let description : String?
    let thumbnail : Thumbnail?
    let stories : Stories?
    let events : Events?
    
    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case thumbnail = "thumbnail"
        case images = "images"
        case creators = "creators"
        case characters = "characters"
        case stories = "stories"
        case events = "events"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        thumbnail = try values.decodeIfPresent(Thumbnail.self, forKey: .thumbnail)
        stories = try values.decodeIfPresent(Stories.self, forKey: .stories)
        events = try values.decodeIfPresent(Events.self, forKey: .events)
    }
}

struct Stories : Codable {
    let available : Int?
    let collectionURI : String?
    let items : [Items]?
    let returned : Int?

    enum CodingKeys: String, CodingKey {

        case available = "available"
        case collectionURI = "collectionURI"
        case items = "items"
        case returned = "returned"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        available = try values.decodeIfPresent(Int.self, forKey: .available)
        collectionURI = try values.decodeIfPresent(String.self, forKey: .collectionURI)
        items = try values.decodeIfPresent([Items].self, forKey: .items)
        returned = try values.decodeIfPresent(Int.self, forKey: .returned)
    }
}

struct Events : Codable {
    let available : Int?
    let collectionURI : String?
    let items : [String]?
    let returned : Int?

    enum CodingKeys: String, CodingKey {

        case available = "available"
        case collectionURI = "collectionURI"
        case items = "items"
        case returned = "returned"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        available = try values.decodeIfPresent(Int.self, forKey: .available)
        collectionURI = try values.decodeIfPresent(String.self, forKey: .collectionURI)
        items = try values.decodeIfPresent([String].self, forKey: .items)
        returned = try values.decodeIfPresent(Int.self, forKey: .returned)
    }
}

struct Items : Codable {
    let resourceURI : String?
    let name : String?
    let type : String?

    enum CodingKeys: String, CodingKey {

        case resourceURI = "resourceURI"
        case name = "name"
        case type = "type"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        resourceURI = try values.decodeIfPresent(String.self, forKey: .resourceURI)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }

}




