//
//  ThirdViewController.swift
//  Week4-Kerim
//
//  Created by Mehmet Kerim ÖZEK on 12.09.2022.
//

import UIKit
import WebKit

class ThirdViewController: UIViewController, WKNavigationDelegate {
    
    //Defining Variables
    @IBOutlet weak var webView: WKWebView!
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Referred NavigationDelegate to Self
        webView.navigationDelegate = self
        
        guard let urlString = urlString else {
            return
        }
        
        //Showing URL on WebView
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
    
}
