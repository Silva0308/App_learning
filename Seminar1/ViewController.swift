//
//  ViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 07/07/23.
//

import UIKit

class ViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Мое первое приложение!"
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.textColor = .white
        return label
    }()
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на новый экран", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    let button1: UIButton = {
        let button = UIButton()
        button.setTitle("Изменить цвет экрана", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    var isTap = false
    override func viewDidLoad() {
        super.viewDidLoad() //вызвали базовый метод
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(button1)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        button1.addTarget(self, action:#selector(changeColor), for: .touchUpInside)
        setConstraint()
    }
    func setConstraint(){
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.height/8),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 5),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    @objc func buttonClick(){
        navigationController?.pushViewController(NewViewController(), animated: false)
    }
    @objc func changeColor(){
        isTap.toggle()
        if isTap{
            view.backgroundColor = .yellow
        } else{
            view.backgroundColor = .white
        }
    }
}

