//
//  CustonColl.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class CustomColl : UICollectionViewCell{
    let image : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person")
        return image
    }()
    var tap : ((UIImage)->Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(image)
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(cellTap))
        collConstr()
        addGestureRecognizer(recognizer)
        image.getImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func collConstr(){
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor),
            image.leftAnchor.constraint(equalTo: leftAnchor),
            image.rightAnchor.constraint(equalTo: rightAnchor),
            image.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    @objc func cellTap(){
        tap?(image.image ?? UIImage())
    }
}
