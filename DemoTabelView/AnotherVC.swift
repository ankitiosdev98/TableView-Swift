//
//  AnotherVC.swift
//  DemoTabelView
//
//  Created by apple on 11/09/20.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import WebKit

class AnotherVC: UIViewController {

        @IBOutlet var webView: UIWebView!

        override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            let url: URL = URL(string: "https://github.com/ankitiosdev98")!
            webView.loadRequest(URLRequest(url: url))
        }
    }

    extension AnotherVC {

        func setupUI() {
            view.backgroundColor = .white
        }

    }
