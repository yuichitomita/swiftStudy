//
//  ViewController.swift
//  WebViewCollection
//
//  Created by Tomi on 2016/11/02.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet var kurukuru: UIActivityIndicatorView!
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        
        let url = URL(string: "https://www.google.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        
        kurukuru.isHidden = true
        
    }
    @IBAction func back(_ sender: AnyObject) {
        webView.goBack()
    }

    @IBAction func next(_ sender: AnyObject) {
        webView.goForward()
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
        // Dispose of any resources that can be recreated.
    }


}

