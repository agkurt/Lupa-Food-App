//
//  Order.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26/08/2023.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
