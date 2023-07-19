//
//  NetworkService.swift
//  Seminar1
//
//  Created by MacBook Pro on 18/07/23.
//

import Foundation

final class NetworkService {
    private let session = URLSession.shared
    
    func getData(getTowns: @escaping ([TownModel])-> Void) {
        let url = URL(string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords")
        
        session.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let towns = try JSONDecoder().decode([TownModel].self, from: data)
                getTowns(towns)
                print(towns)
            } catch {
                print(error)
            }
        }.resume()
        
    }
    
    
    func getCat(with code: Int){
        let url = URL(string: "https://http.cat/" + String (code))
        guard let url = url else {return}
        session.dataTask(with: url) { (data, _, error) in
            print (data)
        }.resume()
    }
    
    func getNews(){
        let url = URL(string: "https://kudago.com/public-api/v1.2/news/?fields=publication_date,title,body_text&body_text=text&actual_only=true")
        session.dataTask(with: url!) { (data, _, _) in
            guard let data else {
                return
            }
            do {
                let news =  try
                JSONDecoder().decode(NewsModel.self, from: data)
                print(news)
            } catch {
                print(error)
            }
        }.resume()
    }
}

