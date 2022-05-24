//
//  NewToDoViewController.swift
//  ToDoList
//
//  Created by Igor Frik on 06.05.2022.
//

import UIKit
import RealmSwift

class NewToDoViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textTextField: UITextField!
    @IBOutlet weak var deadlineDatePicker: UIDatePicker!
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addNewToDo(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        guard let text = textTextField.text else { return }
        let newToDo = ToDoModel()
        newToDo.title = title
        newToDo.text = text
        newToDo.date = Date().string()
        newToDo.deadline = deadlineDatePicker.date.string()
        newToDo.statusText = ToDoModel.status.work.myStatusText
        
        try! realm.write {
            realm.add(newToDo)
        }
        print(realm.objects(ToDoModel.self))
    }
}
