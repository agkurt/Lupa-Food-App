//
//  CardView.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 30.06.2023.
//

import UIKit

class CardView : UIView {
  override init(frame:CGRect) {
      super.init(frame: frame)
    }
    required init? (coder:NSCoder) {
        super.init(coder: coder)
        initalSetup()
    }
    private func initalSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        cornerRadius = 10
    }
}
