//
//  ViewController.swift
//  ToDoApp
//
//  Created by Mika on 2018-09-27.
//  Copyright © 2018 Mika. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    var todoList = [Any]()
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = ""
    }
    
    @IBAction func save(_ sender: Any) {
        
        if textField.text != "" {
            
            todoList.append(textField.text!)
            saveData.set(todoList, forKey:"todo")
            
        }
        else {
            
        }
    }
}
