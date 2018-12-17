//
//  RecepieCell.swift
//  harold eats
//
//  Created by Jakub Perich on 15/12/2018.
//

import UIKit

class RecepieCell: UICollectionViewCell {
        
    @IBOutlet weak var recepieCellImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        recepieCellImage.layer.cornerRadius = 10
    }
    
    func setCollectionCell(recipe: Recipe) {
        recepieCellImage.image = UIImage(named: recipe.imageName)
    }
    
    
}
