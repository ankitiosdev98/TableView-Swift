//
//  Products.swift
//  DemoTabelView
//
//  Created by apple on 11/09/20.
//  Copyright © 2020 Demo. All rights reserved.
//

import Foundation

struct product {
    let name: String
    let thumbnails: String
    let prise: String
}

extension product {
    static func createproducts() -> [product] {
        return [product(name: "Mobile", thumbnails: "mobile.jpg", prise: "$100"),
                product(name: "Laptop", thumbnails: "lptp.png", prise: "$400"),
                product(name: "Pendrive 32 GB", thumbnails: "pendrive.png", prise: "$30"),
                product(name: "Smart TV", thumbnails: "smartTV.png", prise: "$60"),
                product(name: "Smart watch", thumbnails: "smartwatch.png", prise: "$40"),
               
                
       ]
    }
}
