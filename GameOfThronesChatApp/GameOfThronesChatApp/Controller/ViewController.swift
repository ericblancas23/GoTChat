//
//  ViewController.swift
//  GameOfThronesChatApp
//
//  Created by Eric Blancas on 7/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ref: DatabaseReference!
//        ref = Database.database().reference(fromURL: "https://piperchat-c1c1a.firebaseio.com/")
//        ref.updateChildValues(["someValues": 1234])
//        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

