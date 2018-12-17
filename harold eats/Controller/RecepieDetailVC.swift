//
//  RecepieDetailClass.swift
//  harold eats
//
//  Created by Jakub Perich on 16/12/2018.
//

import UIKit

class RecepieDetailVC: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detaiRecepielDescription: UILabel!
    
    var selectedRecepie : Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImage.image = UIImage(named: selectedRecepie.imageName)
        detailTitle.text = selectedRecepie.title
        detaiRecepielDescription.text = selectedRecepie.instructions
    }

    
    
    
}
