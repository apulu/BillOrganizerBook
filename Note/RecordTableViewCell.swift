//
//  RecordTableViewCell.swift
//  Note
//
//  Created by APULU on 2018/6/26.
//  Copyright © 2018 APULU. All rights reserved.
//

import UIKit

class RecordTableViewCell: UITableViewCell {

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
