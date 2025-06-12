//
//  Property.swift
//  Property
//
//  Created by yonradee limsawat on 5/2/2025.
//

import Foundation

// Define a structure to hold property data
struct Property: Decodable {
    let address: String
    let imageName: String
    let thumbnailName:  String
    let type: PropertyType
    let price: String
}

enum PropertyType: String, Decodable {
    case all = "all"
    case house = "house"
    case unit = "unit"
    case land = "land"
    
    // Fallback for unknown types
        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(String.self)
            self = PropertyType(rawValue: rawValue) ?? .all
        }
}
