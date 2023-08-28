//
//  CustomView.swift
//  StoryBoardDemo
//
//  Created by Lucas Quiroga on 27/08/23.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    @IBInspectable
    var demoBackgroundColor: UIColor = .systemCyan {
        didSet{
            backgroundColor = demoBackgroundColor
        }
    }
    
    @IBInspectable
    var demoBorderWidth: CGFloat = 1.0 {
        didSet{
            layer.borderWidth = demoBorderWidth
        }
    }
    
    override func prepareForInterfaceBuilder() {
        backgroundColor = demoBackgroundColor
        layer.borderWidth = demoBorderWidth
    }

}
