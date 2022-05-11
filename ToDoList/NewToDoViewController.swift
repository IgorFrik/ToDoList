//
//  NewToDoViewController.swift
//  ToDoList
//
//  Created by Igor Frik on 06.05.2022.
//

import UIKit

class NewToDoViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textTextField: UITextField!
    @IBOutlet weak var deadlineDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addNewToDo(_ sender: Any) {
        guard let title = titleTextField.text else { return }
        guard let text = textTextField.text else { return }
        let newToDo = ToDoModel(title: title, text: text, date: deadlineDatePicker.date)
        print("!" + newToDo.title + "!")
        print(newToDo.text)
        print(newToDo.statusText)
        print(newToDo.date)
        print(newToDo.deadline)
    }
}
