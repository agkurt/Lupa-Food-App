//
//  String+Extension.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 27/06/2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
