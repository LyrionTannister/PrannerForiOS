//
//  TaskListCell.swift
//  Pranner
//
//  Created by Roman on 06.05.2020.
//  Copyright © 2020 DrewMyScreen. All rights reserved.
//

import UIKit

class TaskListCell: UITableViewCell {

    @IBOutlet weak var labelTaskName: UILabel!

    @IBOutlet weak var labelTaskCategory: UILabel!

    @IBOutlet weak var labelDeadline: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
