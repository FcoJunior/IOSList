//
//  CellTableViewCell.swift
//  List
//
//  Created by Fco Junior on 5/21/16.
//  Copyright © 2016 Fco Junior. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var lb_name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(name:String){
        self.lb_name.text = name
    }

}
