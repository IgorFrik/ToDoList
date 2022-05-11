//
//  ToDoModel.swift
//  ToDoList
//
//  Created by Igor Frik on 07.05.2022.
//

import Foundation
import RealmSwift

class ToDoModel {
    var title: String
    var text: String
    var date: String
    var deadline: String
    var statusText: String
    
    enum status: String {
        case work, complete, delete
        
        var statusText: String {
            switch self {
            case .work: return "В работе"
            case .complete: return "Завершено"
            case .delete: return "Удалено"
            }
        }
    }
    
    init(title: String, text: String, date: Date) {
        self.title = title
        self.text = text
        self.date = Date().string()
        self.deadline = date.string()
        self.statusText = status.work.statusText
    }
}

extension Date {
    func string() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter.string(from: self)
    }
}
