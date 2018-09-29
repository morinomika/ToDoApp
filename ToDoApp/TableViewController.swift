//
//  TableViewController.swift
//  ToDoApp
//
//  Created by Mika on 2018-09-27.
//  Copyright © 2018 Mika. All rights reserved.
//

import UIKit

class TableViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        if UserDefaults.standard.object(forKey: "textList") != nil {
            textList = UserDefaults.standard.object(forKey: "textList") as! [String]
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの型を作る
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示するテキストを作る
        cell.textLabel?.text = textList[indexPath.row]
        // セルをリターンする
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 配列「data」の要素数
        return textList.count
    }
    

}
