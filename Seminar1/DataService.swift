//
//  DataService.swift
//  Seminar1
//
//  Created by MacBook Pro on 25/07/23.
//

import Foundation
final class DataService {
    private var userDefaults = UserDefaults.standard
    
    func putData(towns: [TownModel]) {
        for (index, town) in towns.enumerated() {
            userDefaults.set(town.name, forKey: "name" + String(index))
            userDefaults.set(town.timezone, forKey: "timezone" + String(index))
            userDefaults.set(town.currency, forKey: "currency" + String(index))
            userDefaults.set(town.coords.lat, forKey: "lat" + String(index))
            userDefaults.set(town.coords.lon, forKey: "lon" + String(index))
        }
    }
    
    func getData() -> [TownModel] {
        var models: [TownModel] = []
        var index = 0
        var isExists = userDefaults.string(forKey: "name0") != nil
        while isExists {
            models.append(TownModel(name: userDefaults.string(forKey: "name" + String(index)) ?? "", timezone: userDefaults.string(forKey: "timezone" + String(index)) ?? "", coords: Coordinate(lat: userDefaults.double(forKey: "lat" + String(index)), lon: userDefaults.double(forKey: "lon" + String(index))), currency: userDefaults.string(forKey:"currency" + String(index)) ?? ""))
            index += 1
            isExists = userDefaults.string(forKey: "name" + String(index)) != nil
        }
        return models
    }
}
