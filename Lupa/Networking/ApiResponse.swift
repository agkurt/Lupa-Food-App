//
//  ApiResponse.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26/08/2023.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
