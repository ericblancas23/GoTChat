//
//  ViewController.swift
//  GameOfThronesChatApp
//
//  Created by Eric Blancas on 7/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

