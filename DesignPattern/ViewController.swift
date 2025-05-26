//
//  ViewController.swift
//  DesignPattern
//
//  Created by 권석기 on 5/27/25.
//

import UIKit

import SnapKit

class ViewController: UIViewController {
    
    private let exampleButton = UIButtonBuilder()
        .setTitle("test")
        .setBackgroundColor(.red)
        .setTintColor(.white)
        .build()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(exampleButton)
        exampleButton.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }


}

