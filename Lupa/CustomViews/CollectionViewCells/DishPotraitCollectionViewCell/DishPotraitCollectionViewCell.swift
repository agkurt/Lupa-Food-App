//
//  DishPotraitCollectionViewCell.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 30.06.2023.
//

import UIKit

class DishPotraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String("DishPotraitCollectionViewCell")
    
    @IBOutlet weak var dishPotraitLbl: UILabel!
    @IBOutlet weak var dishPotraitImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish : Dish) {
        dishPotraitLbl.text = dish.name
        dishPotraitImageView.kf.setImage(with: dish.image?.asURL)
        caloriesLabel.text = dish.calories?.formatted()
        descriptionLbl.text = dish.description
    }
    
}
