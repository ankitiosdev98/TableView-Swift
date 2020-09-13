//
//  ProductTableVC.swift
//  DemoTabelView
//
//  Created by apple on 11/09/20.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit

class ProductTableVC: UITableViewController {

    var products = product.createproducts()
    let identifier: String = "tableCell"

    
  //  let cellSpacingHeight: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productDetails",
            let indexPath = tableView?.indexPathForSelectedRow,
            let destinationViewController: DetailViewController = segue.destination as? DetailViewController {
            destinationViewController.product = products[indexPath.row]
        }
    }

}

extension ProductTableVC {

    func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        navigationItem.title = "Product"
        tableView.reloadData()
        
    }

}

// MARK: - UITableView DataSource

extension ProductTableVC {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
  

    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableCell {
            cell.configurateTheCell(products[indexPath.row])
            
            cell.backgroundColor = UIColor.white
            cell.layer.borderColor = UIColor.gray.cgColor
            cell.layer.borderWidth = 0.4
            cell.layer.cornerRadius = 2
//            cell.clipsToBounds = true
          
            cell.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
            cell.layer.shadowOpacity = 0.5
         //   cell.layer.shadowPath = shadowPath2.cgPath
            
            
            return cell
        }
        return UITableViewCell()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "productDetails", sender: self)
    }

}

// MARK: - UITableView Delegate

extension ProductTableVC {

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            products.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }

}

class TableCell: UITableViewCell {

    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var priselabel: UILabel!
    @IBOutlet private var thumbnailImageView: UIImageView!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        priselabel.text = nil
        thumbnailImageView.image = nil
    }

    // MARK: Cell Configuration

    func configurateTheCell(_ product: product) {
        nameLabel.text = product.name
        priselabel.text = "Prise: " + product.prise
        thumbnailImageView.image = UIImage(named: product.thumbnails)
    }

}

