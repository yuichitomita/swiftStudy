//
//  ViewController.swift
//  SwiftTextField
//
//  Created by Tomi on 2016/11/02.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var aiueoTextField: UITextField!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       aiueoTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        label.text = aiueoTextField.text
        
        aiueoTextField.resignFirstResponder()
        
        return true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

