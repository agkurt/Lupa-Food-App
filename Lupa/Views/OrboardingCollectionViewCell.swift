//
//  OrboardingCollectionViewCell.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import UIKit

class OrboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing :OrboardingCollectionViewCell.self)
    
    @IBOutlet weak var SlideImageView: UIImageView!
    
    
    @IBOutlet weak var SlideTitleLabel: UILabel!
    
    
    @IBOutlet weak var SlideDescriptionLabel: UILabel!
    
    func setup(_ slide : OnboardingSlide ) {
        SlideImageView.image = slide.image
        SlideTitleLabel.text = slide.title
        SlideDescriptionLabel.text = slide.description
    }
    
}
