//
//  HomeViewController.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    
    
    var categories : [DishCategory] = [
        .init(id: "id1", name: "American Food1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food5", image: "https://picsum.photos/100/200")
        
    ]
    
    var populars : [Dish] = [
        .init(id: "id1", name: "garry", description: "this is the best food at the moment", image: "https://picsum.photos/100/200", calories: 10.20),
        .init(id: "id2", name: "waffle", description: "this is the best food at the moment", image: "https://picsum.photos/100/200", calories: 10.20)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
    }
    
    private func registerCells() {
        CategoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPotraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPotraitCollectionViewCell.identifier)
    }

}

extension HomeViewController:UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case CategoryCollectionView:
            return categories.count
            
        case popularCollectionView:
            return populars.count
            
        default:return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}



