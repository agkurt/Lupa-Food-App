//
//  CategoryCollectionViewCell.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var CategoryImageView: UIImageView!
    @IBOutlet weak var CategoryTitleLbl: UILabel!
    
    func setup(category : DishCategory) {
        CategoryTitleLbl.text = category.name
        CategoryImageView.kf.setImage(with: category.image.asURL)
    }
    
}
