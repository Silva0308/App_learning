//
//  CollectionViewController.swift
//  Seminar1
//
//  Created by MacBook Pro on 11/07/23.
//

import UIKit
class CollectionViewController: UICollectionViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.curTheme.backgroundColor
        collectionView.register(CustomColl.self, forCellWithReuseIdentifier: "Collect")
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collect", for: indexPath)
        guard let cell = cell as? CustomColl else {
            return UICollectionViewCell()
        }
        cell.tap =  {[weak self] myImage in
            let animation = CATransition()
            animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
            animation.type = .moveIn
            animation.duration = 3
            self?.navigationController?.view.layer.add(animation, forKey: nil)
            self?.navigationController?.pushViewController(ImageViewController(name: myImage), animated: false)
        }
        return cell
    }
}
