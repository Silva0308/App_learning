//
//  ImageViewExtensions.swift
//  Seminar1
//
//  Created by MacBook Pro on 18/07/23.
//

import UIKit
extension UIImageView {
    func getImage() {
        guard let url = URL(string: "https://random.dog/woof.json") else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url){ (data, _, _) in 
            guard let data else {
                return
            }
            do {
                let imageUrl = try JSONDecoder().decode(ImageModel.self, from: data)
                guard let someUrl = URL(string: imageUrl.url)
                else {
                    return
                }
                session.dataTask(with: someUrl){ (data, _, _) in
                    guard let data, let image = UIImage(data: data) else {
                        return
                    }
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }.resume()
            } catch {
                print(error)
            }
        }.resume()
    }
}
