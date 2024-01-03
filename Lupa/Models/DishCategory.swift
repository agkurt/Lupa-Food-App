//
//  DishCategory.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 27/06/2023.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
