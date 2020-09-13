//
//  DetailsViewController.swift
//  DemoTabelView
//
//  Created by apple on 11/09/20.
//  Copyright © 2020 Demo. All rights reserved.
//

class DetailsViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var prise: UILabel!
    

    var recipe: product?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let product = product {
            navigationItem.title = recipe.name
            imageView.image = UIImage(named: recipe.thumbnails)
            nameLabel.text = recipe.name
            prise.text = "Prep Time: " + recipe.prepTime
        }
    }
}
