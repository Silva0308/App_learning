//
//  CustomButton.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class CustomButton: UIButton{
    init(name: String) {
        super.init(frame: .zero)
        backgroundColor = .blue
        setTitle(name, for: .normal)
        setTitleColor(.white, for: .normal)
        setTitleColor(.green, for: .highlighted)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}  
