//
//  ServiceCell.swift
//  eduid-iOS-Ext
//
//  Created by Blended Learning Center on 20.02.18.
//  Copyright © 2018 Blended Learning Center. All rights reserved.
//

import UIKit

class ServiceCell: UICollectionViewCell {

    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func awakeFromNib() {
        switchButton.isEnabled = true
    }
    
}
