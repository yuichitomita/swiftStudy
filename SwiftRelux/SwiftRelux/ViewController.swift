//
//  ViewController.swift
//  SwiftRelux
//
//  Created by Tomi on 2016/11/04.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animationGifView: UIWebView!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gifData = NSData(contentsOfFile: Bundle.main.path(forResource: "am", ofType: "gif")!)!
        
        animationGifView.load(gifData as Data, mimeType: "image/gif", textEncodingName: "utf-8", baseURL: NSURL() as URL)
        
        
        startAnimation()
    }
    func startAnimation(){
        UIView.animate(withDuration: 0.5, animations: {()->Void in
            
            self.button1.frame = CGRect(x: 123, y: 37, width: 128, height: 128)
            
            self.button2.frame = CGRect(x: 123, y: 269, width: 128, height: 128)

            self.button3.frame = CGRect(x: 123, y: 503, width: 128, height: 128)

            
            
            }, completion: {(Bool) -> Void in
        
        })
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

