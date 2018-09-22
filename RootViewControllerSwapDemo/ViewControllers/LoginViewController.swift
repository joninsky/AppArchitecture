//
//  LoginViewController.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController, BasicLabeProtocol {
    //MARK: Properties
    var label = UILabel(frame: .zero)
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prepareLabel(withText: "Login Screen")
    }
}
