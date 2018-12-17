//
//  RecepiesSelectionVC.swift
//  harold eats
//
//  Created by Jakub Perich on 14/12/2018.
//

import UIKit

class RecepiesSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    

    var selectedCategory : String!
    var recepies : [Recipe]!
    let data = DataSet()
    var recepieToPass : Recipe!


    @IBOutlet weak var collectionViewConnection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewConnection.delegate = self
        collectionViewConnection.dataSource = self
        recepies = data.getRecipes(forCategoryTitle: selectedCategory)

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  recepies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCellId", for: indexPath) as? RecepieCell {
//      v HomeVC jsou následující dva řádky v jednom
            let currentRecepie = recepies[indexPath.item]
            cell.setCollectionCell(recipe: currentRecepie)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let deviceSize = view.bounds.width
        let cellSize = (deviceSize / 2) - 15
        
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recepieToPass = recepies[indexPath.item]
        performSegue(withIdentifier: "toDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVcLink = segue.destination as? RecepieDetailVC
        detailVcLink?.selectedRecepie = recepieToPass
    }
    
}

