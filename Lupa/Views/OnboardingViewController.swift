//
//  OnboardingViewController.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    @IBOutlet weak var nextButon: UIButton!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides = [OnboardingSlide]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    
    @IBAction func NextButonClicked(_ sender: UIButton) {
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: OrboardingCollectionViewCell.identifier, for: indexPath) as! OrboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    
        
}
