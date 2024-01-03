//
//  String+Extension.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26/08/2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
