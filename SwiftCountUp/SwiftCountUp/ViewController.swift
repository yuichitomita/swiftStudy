//
//  ViewController.swift
//  SwiftCountUp
//
//  Created by Tomi on 2016/11/02.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    var resultBox = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func plus(_ sender: AnyObject) {
        resultBox = resultBox + 1
        
        countLabel.text = String(resultBox)
    }
    
    @IBAction func minus(_ sender: AnyObject) {
        resultBox = resultBox - 1
        
        countLabel.text = String(resultBox)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

