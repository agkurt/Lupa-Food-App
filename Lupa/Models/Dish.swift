//
//  Dish.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 27/06/2023.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
