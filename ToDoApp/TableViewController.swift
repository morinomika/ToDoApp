//
//  TableViewController.swift
//  ToDoApp
//
//  Created by Mika on 2018-09-27.
//  Copyright © 2018 Mika. All rights reserved.
//

import UIKit

class todoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    
    var saveData: UserDefaults = UserDefaults.standard
    
    var todoList: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        if saveData.array(forKey: "todo") != nil {
            todoList = saveData.array(forKey: "todo") as! [String]
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        todoList = saveData.object(forKey: "todo") as! [String]
        cell?.textLabel?.text = todoList[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoList.remove(at: indexPath.row)
            table.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveData.array(forKey: "todo") != nil {
            todoList = saveData.array(forKey: "todo") as! [String]
        }
        table.reloadData()
    }
    
    

}
