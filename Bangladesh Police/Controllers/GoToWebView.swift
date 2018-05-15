//
//  GoToWebView.swift
//  Bangladesh Police
//
//  Created by RIO on 5/14/18.
//  Copyright © 2018 RIO. All rights reserved.
//

import UIKit

class GoToWebView:UIViewController {
    
    @IBOutlet weak var WebView:UIWebView!
    var url = String()
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        print(self.url)
        if let urlo = URL(string: url) {
        let urlReq = URLRequest(url: urlo)
        
        WebView.loadRequest(urlReq)
           activityIndicator.startAnimating()
        
    }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        activityIndicator.stopAnimating()
        let myVC = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    
}
