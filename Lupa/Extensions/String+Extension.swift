//
//  String+Extension.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}
