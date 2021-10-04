//
//  TextField.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 03/10/21.
//

import Foundation
import UIKit

class TextField: UITextField {
    
    private var textField: UITextField?
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        textField = UITextField(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func DefaultField(_ context: UIView, placeholder: String?, keyboardType: UIKeyboardType?, textColor: UIColor?) -> UITextField {
        textField?.keyboardType = keyboardType ?? .alphabet
        textField?.textColor = textColor ?? .black
        textField?.attributedPlaceholder = NSAttributedString(
            string: placeholder ?? "",
            attributes: [NSAttributedString.Key.foregroundColor: hexStringToUIColor(hex: "#9E9E9E")]
        )
        textField?.backgroundColor = hexStringToUIColor(hex: "#EDE7F6")
        return textField!
    }
}
