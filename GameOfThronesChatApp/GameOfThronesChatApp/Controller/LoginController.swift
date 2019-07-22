//
//  LoginViewController.swift
//  GameOfThronesChatApp
//
//  Created by Eric Blancas on 7/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let inputContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(r: 80, g: 101, b: 200)
        button.layer.cornerRadius = 5
        button.setTitle("Register", for: .normal)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(r: 80, g: 101, b: 200)
        button.layer.cornerRadius = 5
        button.setTitle("Login", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        
        view.addSubview(inputContainerView)
        view.addSubview(loginRegisterButton)
        
//        //need x, y width, height constraints
//        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
//        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        setupInputContainerView()
        setupLoginRegisterButton()
        setupLoginButton()
    }
    
    func setupInputContainerView() {
        //need x, y width, height constraints
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setupLoginRegisterButton() {
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -200).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalTo: loginRegisterButton.heightAnchor, constant: -50).isActive = true

    }
    
    func setupLoginButton() {
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
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
