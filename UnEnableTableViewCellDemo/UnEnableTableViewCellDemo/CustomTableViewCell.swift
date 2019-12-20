//
//  TableViewCell.swift
//  UnEnableTableViewCellDemo
//
//  Created by 石場清子 on 2019/12/20.
//  Copyright © 2019 石場清子. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.isUserInteractionEnabled = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
