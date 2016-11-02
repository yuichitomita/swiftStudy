//
//  ViewController.swift
//  SwiftImageView
//
//  Created by Tomi on 2016/11/01.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backImageView: UIImageView!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 1
        
    }

    @IBAction func change(_ sender: AnyObject) {
        if (count == 0) {
            backImageView.image = UIImage(named: "back1.jpg")
            count = 1
        }else if (count == 1){
            backImageView.image = UIImage(named: "back2.jpg")
            count = 0
            
        }
            
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

