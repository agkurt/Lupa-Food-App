//
//  HomeViewController.swift
//  Lupa
//
//  Created by Ahmet Göktürk Kurt on 26.06.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    
    
    
    var categories : [DishCategory] = [
        .init(id: "id1", name: "American Food1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "American Food5", image: "https://picsum.photos/100/200")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
    }
    
    private func registerCells() {
        CategoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        CategoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }

}

extension HomeViewController:UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}



