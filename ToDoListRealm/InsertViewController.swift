//
//  InsertViewController.swift
//  ToDoListRealm
//
//  Created by Zhanelya Irmakhamed on 11/15/20.
//  Copyright © 2020 Zhanelya Irmakhamed. All rights reserved.
//

import UIKit
import RealmSwift

class InsertViewController: UIViewController {

    let realm = try! Realm()
    
    @IBAction func saveButtonAction(_ sender: Any) {
        let todo = ToDo()
        todo.ToDoText = todoTextField.text!
        todo.doneText = todoSwitch.isOn
        
        try! realm.write{
            realm.add(todo)
        }
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var todoSwitch: UISwitch!
    @IBOutlet weak var todoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  

}
