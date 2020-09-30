//
//  staffsCell.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 14/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class staffsCell: UITableViewCell {

    @IBOutlet weak var staffImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var activeView: UIView!
    @IBOutlet weak var statusLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        activeView.layer.cornerRadius = 4
        staffImg.layer.cornerRadius = 60.5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
