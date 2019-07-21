//
//  LoginViewController.swift
//  GameOfThronesChatApp
//
//  Created by Eric Blancas on 7/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        let inputContainerView = UIView()
        inputContainerView.backgroundColor = UIColor.white
        
        view.addSubview(inputContainerView)
        
        //need x, y width, height constraints
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0, constant: -24)
        inputContainerView.heightAnchor.constraint(equalToConstant: 150)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
