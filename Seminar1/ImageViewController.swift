//
//  ImageViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class ImageViewController : UIViewController{
    let image = UIImageView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
    init(name: UIImage){
        super.init(nibName: nil, bundle: nil)
        image.image = name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.curTheme.backgroundColor
        view.addSubview(image)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat], animations: {
            self.image.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.image.transform = CGAffineTransform(rotationAngle: .pi/4)
        })
        UIView.animate(withDuration: 3, delay: 1, options: [.autoreverse, .repeat], animations: {
            self.image.layer.opacity = 0
        })
    }
}
