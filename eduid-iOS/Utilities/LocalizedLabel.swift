//
//  LocalizedLabel.swift
//  eduid-iOS
//
//  Created by Blended Learning Center on 31.10.18.
//  Copyright © 2018 Blended Learning Center. All rights reserved.
//

import UIKit
//Localized label a helper class to help the language support of UILabel
class LocalizedLabel : UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guard let text = self.text else { return }
        self.text = NSLocalizedString(text, comment: "Localized label")
    }
}
