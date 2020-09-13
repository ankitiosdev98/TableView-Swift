//
//  DetailViewController.swift
//  DemoTabelView
//
//  Created by apple on 11/09/20.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
        @IBOutlet var mainview : UIView!
        @IBOutlet var imageView: UIImageView!
        @IBOutlet var nameLabel: UILabel!
        @IBOutlet var prise: UILabel!

        var product: product?

        override func viewDidLoad() {
            super.viewDidLoad()
            
                mainview.layer.cornerRadius = 10
                mainview.layer.masksToBounds = true
                mainview.layer.shadowColor = UIColor.black.cgColor
                mainview.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
                mainview.layer.shadowOpacity = 0.5
            
            
            if let recipe = product {
                navigationItem.title = recipe.name
                imageView.image = UIImage(named: recipe.thumbnails)
                nameLabel.text = recipe.name
                prise.text = "Prise: " + product!.prise
            }
        }
    }

    
