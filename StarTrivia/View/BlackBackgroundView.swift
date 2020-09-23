//
//  BlackBackgroundView.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/23/20.
//

import UIKit

class BlackBGView : UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class BlackBgButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
    
}
