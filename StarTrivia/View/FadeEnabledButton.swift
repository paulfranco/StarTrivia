//
//  FadeEnabledButton.swift
//  StarTrivia
//
//  Created by Paul Franco on 9/24/20.
//

import UIKit

class FadeEnabledButton : UIButton {
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled == true {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                }
            }
        }
    }
    
}
