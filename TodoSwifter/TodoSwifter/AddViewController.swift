//
//  AddViewController.swift
//  TodoSwifter
//
//  Created by Tomi on 2016/11/03.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var array = [String]()
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if UserDefaults.standard.object(forKey: "array") != nil {
            array = UserDefaults.standard.object(forKey: "array") as! [String]
            
        }
        
    }
    
    @IBAction func add(_ sender: AnyObject) {
        array.append(textField.text!)
        
        UserDefaults.standard.set(array, forKey: "array")
        
        self.navigationController?.popViewController(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
