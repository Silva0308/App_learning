//
//  Theme.swift
//  Seminar1
//
//  Created by MacBook Pro on 25/07/23.
//

import UIKit
protocol ThemeProtocol {
    var backgroundColor: UIColor { get }
}
final class Theme {
    static var curTheme: ThemeProtocol = WhiteTheme()
}
final class WhiteTheme: ThemeProtocol {
    var backgroundColor: UIColor = .white
    
}

final class GreenTheme: ThemeProtocol {
    var backgroundColor: UIColor = .green
}

final class BlurTheme: ThemeProtocol {
    var backgroundColor: UIColor = .blue
}
