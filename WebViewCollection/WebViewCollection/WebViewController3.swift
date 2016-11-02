//
//  WebViewController3.swift
//  WebViewCollection
//
//  Created by Tomi on 2016/11/02.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class WebViewController3: UIViewController,UIWebViewDelegate{

    @IBOutlet var webView: UIWebView!
    @IBOutlet var kurukuru: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
        
        let url = URL(string: "https://www.mbga.jp/")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        
        kurukuru.isHidden = true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        kurukuru.startAnimating()
        kurukuru.isHidden = false
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        kurukuru.stopAnimating()
        
        kurukuru.isHidden = true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
}
