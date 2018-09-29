//
//  ViewController.swift
//  ToDoApp
//
//  Created by Mika on 2018-09-27.
//  Copyright © 2018 Mika. All rights reserved.
//

import UIKit
var textList = [String]()

class ViewController: UIViewController{
   

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func save() {
        //変数に入力内容を入れる
        textList.append(textField.text!)
        //追加ボタンを押したらフィールドを空にする
        textField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(textList, forKey: "textList" )
    }


}

