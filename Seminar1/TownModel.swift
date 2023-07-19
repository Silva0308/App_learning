//
//  TownModel.swift
//  Seminar1
//
//  Created by MacBook Pro on 18/07/23.
//

struct TownModel: Codable {
    var name: String
    var timezone: String
    var coords: Coordinate
    var currency: String
}

struct Coordinate: Codable {
    var lat: Double?
    var lon: Double?
}
