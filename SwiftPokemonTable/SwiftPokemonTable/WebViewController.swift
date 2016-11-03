//
//  WebViewController.swift
//  SwiftPokemonTable
//
//  Created by Tomi on 2016/11/03.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://pokemon-go.tokyo/#35.681009.139.713796.16")
        
        let requestUrl = URLRequest(url: url!)
        
        webView.loadRequest(requestUrl)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func back(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
