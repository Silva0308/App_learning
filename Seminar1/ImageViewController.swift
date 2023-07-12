//
//  ImageViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class ImageViewController : UIViewController{
    let image = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
    init(name: UIImage){
        super.init(nibName: nil, bundle: nil)
        image.image = name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(image)
    }
}
