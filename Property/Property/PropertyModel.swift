//
//  PropertyModel.swift
//  Property
//
//  Created by yonradee limsawat on 5/2/2025.
//

import Foundation

class PropertyModel {
    
    private(set) var properties: [Property] = []
    private(set) var watchList: [Property] = []
    
    init() {
        if let url = Bundle.main.url(forResource: "property", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                properties = try decoder.decode([Property].self, from: data)
                print("JSON Loaded Successfully! \(properties.count) properties found.")
            } catch {
                print("Error loading JSON: \(error.localizedDescription)")
            }
        } else {
            print("Could not find property.json in the bundle.")
        }
    }
    
    func properties(forType type: PropertyType?) -> [Property] {
        guard let type = type, type != .all else { return properties }
        return properties.filter { $0.type == type }
    }
    
    func add(property: Property) {
        properties.append(property)
    }
    //Add to watch list
    func addToWatchList(property: Property) {
        if !watchList.contains(where: { $0.address == property.address }) {
            watchList.append(property)
            print("Property added to Watchlist: \(property.address)")
        }
    }
    //Remove to watch list
    func removeFromWatchList(property: Property) {
        if let index = watchList.firstIndex(where: { $0.address == property.address }) {
            watchList.remove(at: index)
            print("Property removed from Watchlist: \(property.address)")
        }
    }
}
