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
            self?.navigationController?.pushViewController(ImageViewController(name: myImage), animated: true)
        }
        return cell
    }
}
