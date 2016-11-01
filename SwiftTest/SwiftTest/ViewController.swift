//
//  ViewController.swift
//  SwiftTest
//
//  Created by Tomi on 2016/10/31.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 5
 

    override func viewDidLoad() {
        super.viewDidLoad()
    
        count = 10
        
        print(count)
    }

    @IBAction func tap(_ sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

