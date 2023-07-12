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
    let button = CustomButton(name: "Перейти на новый экран")
    let button1 = CustomButton(name: "Изменить цвет экрана")
    let button3 = CustomButton(name: "Перейти на TableViewController")
    let button4 = CustomButton(name: "Перейти на  CollectionViewController")
    var isTap = false
    override func viewDidLoad() {
        super.viewDidLoad() //вызвали базовый метод
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(button1)
        view.addSubview(button3)
        view.addSubview(button4)
        
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        button1.addTarget(self, action:#selector(changeColor), for: .touchUpInside)
        button3.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        button4.addTarget(self, action: #selector(tapToCollection), for: .touchUpInside)
        setConstraint()
    }
    func setConstraint(){
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        button4.translatesAutoresizingMaskIntoConstraints = false
        
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
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button3.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 5),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button3.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 5),
            button4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button4.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button4.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    @objc func buttonClick(){
        navigationController?.pushViewController(NewViewController(), animated: false)
    }
    
    @objc func buttonTap(){
        navigationController?.pushViewController(TableViewController(), animated: false)
    }
    @objc func tapToCollection(){
        navigationController?.pushViewController(CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), animated: false)
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
	
