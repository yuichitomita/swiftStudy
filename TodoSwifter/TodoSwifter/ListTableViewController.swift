//
//  ListTableViewController.swift
//  TodoSwifter
//
//  Created by Tomi on 2016/11/03.
//  Copyright © 2016年 slj. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var resultArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if UserDefaults.standard.object(forKey: "array") != nil {
            resultArray = UserDefaults.standard.object(forKey: "array") as! [String]
        }
        
        tableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = resultArray[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            resultArray.remove(at: indexPath.row)
            
            UserDefaults.standard.set(resultArray,forKey: "array")
            
            tableView.reloadData()
            
        }
        
    }
    


}
