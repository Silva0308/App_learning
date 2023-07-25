//
//  NewViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 07/07/23.
//

import UIKit
class NewViewController: UIViewController{
    let rect1: UIView = {
        let rect = UIView()
        rect.backgroundColor = .red
        return rect
    }()
    let rect2: UIView = {
        let rect = UIView()
        rect.backgroundColor = .blue
        return rect
    }()
    let rect3: UIView = {
        let rect = UIView()
        rect.backgroundColor = .gray
        return rect
    }()
    let rect4: UIView = {
        let rect = UIView()
        rect.backgroundColor = .black
        return rect
    }()
    let rect5: UIView = {
        let rect = UIView()
        rect.backgroundColor = .yellow
        return rect
    }()
    let rect6: UIView = {
        let rect = UIView()
        rect.backgroundColor = .purple
        return rect
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  Theme.curTheme.backgroundColor
        title = "Новый контроллер"
        view.addSubview(rect1)
        view.addSubview(rect2)
        view.addSubview(rect3)
        view.addSubview(rect4)
        view.addSubview(rect5)
        view.addSubview(rect6)
        setConstraint()
    }
    func setConstraint(){
        rect1.translatesAutoresizingMaskIntoConstraints = false
        rect2.translatesAutoresizingMaskIntoConstraints = false
        rect3.translatesAutoresizingMaskIntoConstraints = false
        rect4.translatesAutoresizingMaskIntoConstraints = false
        rect5.translatesAutoresizingMaskIntoConstraints = false
        rect6.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rect1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            rect1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 3),
            rect1.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -2),
            rect1.heightAnchor.constraint(equalToConstant: 50),
            
            rect2.topAnchor.constraint(equalTo: rect1.topAnchor),
            rect2.widthAnchor.constraint(equalTo: rect1.widthAnchor),
            rect2.heightAnchor.constraint(equalTo: rect1.heightAnchor),
            rect2.leftAnchor.constraint(equalTo: rect1.rightAnchor, constant: 4),
            
            rect3.topAnchor.constraint(equalTo: rect1.bottomAnchor, constant: 10),
            rect3.widthAnchor.constraint(equalTo: rect1.widthAnchor),
            rect3.heightAnchor.constraint(equalTo: rect1.heightAnchor),
            rect3.leftAnchor.constraint(equalTo: rect1.leftAnchor),
            
            rect4.topAnchor.constraint(equalTo: rect3.topAnchor),
            rect4.widthAnchor.constraint(equalTo: rect1.widthAnchor),
            rect4.heightAnchor.constraint(equalTo: rect1.heightAnchor),
            rect4.leftAnchor.constraint(equalTo: rect3.rightAnchor, constant: 4),
            
            rect5.topAnchor.constraint(equalTo: rect3.bottomAnchor, constant: 10),
            rect5.widthAnchor.constraint(equalTo: rect1.widthAnchor),
            rect5.heightAnchor.constraint(equalTo: rect1.heightAnchor),
            rect5.leftAnchor.constraint(equalTo: rect1.leftAnchor),
            
            rect6.topAnchor.constraint(equalTo: rect5.topAnchor),
            rect6.widthAnchor.constraint(equalTo: rect1.widthAnchor),
            rect6.heightAnchor.constraint(equalTo: rect1.heightAnchor),
            rect6.leftAnchor.constraint(equalTo: rect5.rightAnchor, constant: 4)
        ])
            
    }
}
