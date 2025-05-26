//
//  UIButtonBuilder.swift
//  DesignPattern
//
//  Created by 권석기 on 5/27/25.
//

import UIKit

protocol UIButtonBuilderType {
    func setTitle(_ title: String) -> Self
    func setTintColor(_ color: UIColor) -> Self
    func setBackgroundColor(_ color: UIColor) -> Self
    func build() -> UIButton
}

final class UIButtonBuilder: UIButtonBuilderType {
    private var title: String?
    private var tintColor: UIColor?
    private var backgroundColor: UIColor?
    
    func setTintColor(_ color: UIColor) -> UIButtonBuilder {
        self.tintColor = color
        return self
    }
    
    func setBackgroundColor(_ color: UIColor) -> UIButtonBuilder {
        self.backgroundColor = color
        return self
    }
    
    func build() -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.tintColor = tintColor
        return button
    }
    
    func setTitle(_ title: String) -> UIButtonBuilder {
        self.title = title
        return self
    }
}
