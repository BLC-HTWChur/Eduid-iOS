//
//  ServiceCell.swift
//  eduid-iOS-Ext
//
//  Created by Blended Learning Center on 02.02.18.
//  Copyright © 2018 Blended Learning Center. All rights reserved.
//

import UIKit
import BEMCheckBox

class ServiceSingleTonCell: UICollectionViewCell {

    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var switchButton: BEMCheckBox!
    
    private var service : String?{
        get{
            return serviceLabel.text
        }
        set {
            serviceLabel.text = newValue
        }
    }

}
