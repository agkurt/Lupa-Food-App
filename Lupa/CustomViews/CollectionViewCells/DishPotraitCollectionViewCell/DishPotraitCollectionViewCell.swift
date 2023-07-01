//
//  DishPotraitCollectionViewCell.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 30.06.2023.
//

import UIKit

class DishPotraitCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dishPotraitLbl: UILabel!
    @IBOutlet weak var dishPotraitImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish : Dish) {
        
    }
    
}
