//
//  CategoryCell.swift
//  harold eats
//
//  Created by Jakub Perich on 11/12/2018.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImage.layer.cornerRadius = 10
        
    }

    func setCell(category: FoodCategory){
        categoryName.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
        
        
    }

}
