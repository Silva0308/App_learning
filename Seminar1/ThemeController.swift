//
//  ThemeController.swift
//  Seminar1
//
//  Created by MacBook Pro on 25/07/23.
//

import UIKit
class ThemeController: UIViewController {
    private let greenButton: UIButton = {
      let button = UIButton()
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.backgroundColor = GreenTheme().backgroundColor
        return button
    }()
    
    private let blueButton: UIButton = {
      let button = UIButton()
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.backgroundColor = BlurTheme().backgroundColor
        return button
    }()
    
    private let whiteButton: UIButton = {
      let button = UIButton()
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.backgroundColor = WhiteTheme().backgroundColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.curTheme.backgroundColor
        view.addSubview(greenButton)
        view.addSubview(whiteButton)
        view.addSubview(blueButton)
        setConstrains()
        greenButton.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        whiteButton.addTarget(self, action: #selector(whiteTap), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
    }
    private func setConstrains(){
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        whiteButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            whiteButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            whiteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            whiteButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            whiteButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            greenButton.bottomAnchor.constraint(equalTo: whiteButton.topAnchor, constant: -20),
            greenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            greenButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            blueButton.topAnchor.constraint(equalTo: whiteButton.bottomAnchor, constant: 20),
            blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            blueButton.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    @objc func greenTap() {
        Theme.curTheme = GreenTheme()
        view.backgroundColor = Theme.curTheme.backgroundColor
    }
    
    @objc func blueTap() {
        Theme.curTheme = BlurTheme()
        view.backgroundColor = Theme.curTheme.backgroundColor
    }
    
    @objc func whiteTap() {
        Theme.curTheme = WhiteTheme()
        view.backgroundColor = Theme.curTheme.backgroundColor
    }
}
