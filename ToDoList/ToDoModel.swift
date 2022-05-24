//
//  ToDoModel.swift
//  ToDoList
//
//  Created by Igor Frik on 07.05.2022.
//

import Foundation
import RealmSwift

class ToDoModel: Object {
    @objc dynamic var title = ""
    @objc dynamic var text = ""
    @objc dynamic var date = ""
    @objc dynamic var deadline = ""
    @objc dynamic var statusText = ""
    
    enum status: String {
        case work, complete, delete

        var myStatusText: String {
            switch self {
            case .work: return "В работе"
            case .complete: return "Завершено"
            case .delete: return "Удалено"
            }
        }
    }
    
//    init(title: String, text: String, date: Date) {
//        self.title = title
//        self.text = text
//        self.date = Date().string()
//        self.deadline = date.string()
//        self.statusText = status.work.myStatusText
//    }
}

extension Date {
    func string() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter.string(from: self)
    }
}
