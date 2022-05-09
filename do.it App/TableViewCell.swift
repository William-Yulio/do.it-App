//
//  TableViewCell.swift
//  do.it App
//
//  Created by William Yulio on 09/05/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var uncheckImageView: UIImageView!
    @IBOutlet weak var taskLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
struct ToDo{
    var title: String
    var isChecked: Bool
}
