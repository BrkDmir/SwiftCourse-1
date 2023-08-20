//
//  ViewController.swift
//  WebView
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/") else {return}
        webView.load(URLRequest(url: url))
    }


}


