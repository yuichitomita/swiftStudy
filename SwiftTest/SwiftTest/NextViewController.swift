//
//  NextViewController.swift
//  SwiftTest
//
//  Created by Tomi on 2016/10/31.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func change(_ sender: AnyObject) {
        changeLabel.text = "暗号が解除されました"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
