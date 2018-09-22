//
//  RootViewControllerState.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit


/// Enumeration that represents the state of the `RootViewController`. The root view controller manages the app's `UIViewController`'s through the "Container View" concept.
///
/// - loggedOut: The app has a logged in user.
/// - loggedIn: The app does not have a logged in user.
/// - custom: We want to swap out the current `UIViewController` for a different one.
enum RootViewControllerState {
    case loggedOut
    case loggedIn
    case custom(viewController: UIViewController)
}
