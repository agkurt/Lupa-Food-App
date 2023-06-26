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
    
    var slides : [OnboardingSlide] = []
        
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                
                nextButon.setTitle("Get Started", for: .normal)

            }else {
                nextButon.setTitle("Next", for: .normal)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    slides = [
            OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide2")),
            OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: #imageLiteral(resourceName: "slide1")),
            OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: #imageLiteral(resourceName: "slide3"))
        ]
        pageControl.numberOfPages = slides.count
    }
    
    @IBAction func NextButonClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(identifier: "HomeNavigationController") as! UINavigationController
            
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve
            present(controller, animated: true , completion: nil)
            print("go to the next page")
        }else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            CollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }

    }
    
    
}
    
extension OnboardingViewController: UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
        CollectionView.dequeueReusableCell(withReuseIdentifier: OrboardingCollectionViewCell.identifier, for: indexPath) as! OrboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        let currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}
