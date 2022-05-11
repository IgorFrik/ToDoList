//
//  ToDoTableViewCell.swift
//  ToDoList
//
//  Created by Igor Frik on 06.05.2022.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleCellLabel: UILabel!
    @IBOutlet weak var textCellLabel: UILabel!
    @IBOutlet weak var statusCellLabel: UILabel!
    @IBOutlet weak var dateCellLabel: UILabel!
    @IBOutlet weak var deadlineCellLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
