//
//  Charchters.swift
//  MarvelAssessment
//
//  Created by norelhoda on 25/02/2024.
//

import Foundation

struct CharchterList :Codable{
    let code : Int?
    let status : String?
    let data : Data?
    
    enum CodingKeys: String, CodingKey {
        case code, status, data
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        code = try container.decode(Int.self, forKey: .code)
        status = try container.decode(String.self, forKey: .status)
        data = try container.decode(Data.self, forKey: .data)
    }
}

struct Data : Codable {
    let results : [Results]?
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        results = try container.decode([Results].self, forKey: .results)
    }
}
struct Results : Codable {
    let id : Int?
    let title : String?
    let thumbnail : Thumbnail?
    
    enum CodingKeys: String, CodingKey {
        case id, title, thumbnail
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        thumbnail = try container.decode(Thumbnail.self, forKey: .thumbnail)
    }
}

struct Thumbnail : Codable {
    let path : String?
    enum CodingKeys: String, CodingKey {
        case path
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        path = try container.decode(String.self, forKey: .path)
    }
}
