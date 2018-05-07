//
//  DetailViewController.swift
//  Petitions
//
//  Created by Marta Krawiec on 3/15/17.
//  Copyright © 2017 Marta Krawiec. All rights reserved.
//

import UIKit
import WebKit
class DetailViewController: UIViewController {

    
    var webView: WKWebView!
    var detailItem: [String: String]!
    
    override func loadView() {
        
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var html = "<html>"
        guard detailItem != nil else { return }
        
        if let body = detailItem["body"] {
        
        html += "<head>"
        html += "<meta name=\"viewport\" content= \"width = device-width, initial-scale=1\">"
        html += "<style>body { font-size: 150%; }</style>"
        html += "<body>"
        html += body
        html += "<body>"
        html += "<html>"
        webView.loadHTMLString(html, baseURL: nil)
        }
    }

    

  

}
