//
//  RoundedTextField.swift
//  Clima
//
//  Created by Afonso H Sabino on 09/11/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
        layer.cornerRadius = frame.height / 2
        
    }
    
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 28)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

}
