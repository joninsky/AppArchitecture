//
//  RootViewController.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit


class RootViewController: UIViewController {
    //MARK: Properties
    var state: RootViewControllerState = RootViewControllerState.loggedOut {
        didSet {
            
        }
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: Functions
    func update(forState state: RootViewControllerState) {
        switch state {
        case .loggedOut:
            break
        case .loggedIn:
            break
        case .custom(viewController: let viewController):
            break
        }
    }
    
}
