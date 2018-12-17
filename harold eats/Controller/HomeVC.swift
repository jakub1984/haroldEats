//
//  ViewController.swift
//  harold eats
//
//  Created by Jakub Perich on 06/12/2018.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
  
    var data = DataSet()
    var categoryToPass : String!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell  {
            cell.setCell(category: data.categories[indexPath.row])
            return cell
        }
            return UITableViewCell()
        }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecepiesSelection", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let recepiesVC = segue.destination as? RecepiesSelectionVC
        recepiesVC?.selectedCategory = categoryToPass
    }
}



