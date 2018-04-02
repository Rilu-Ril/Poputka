//
//  FeedCell.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

	@IBOutlet weak var lblFrom: UILabel!
	@IBOutlet weak var lblTo: UILabel!
	@IBOutlet weak var lblDesc: UILabel!
	@IBOutlet weak var lblTime: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	
	func set(data: Placement) {
		lblFrom.text = data.from
		lblTo.text = data.to
		lblDesc.text = data.comment
		lblTime.text = data.time
	}
	
	//call
	
	
}
