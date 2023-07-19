//
//  NewsModel.swift
//  Seminar1
//
//  Created by MacBook Pro on 18/07/23.
//

struct NewsModel: Decodable {
    var results: [News]
}
struct News: Decodable {
    var date: Int
    var title: String
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case date = "publication_date"
        case title
        case text = "body_text"
    }
}
