//
//  UIViewController_Extensions.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit

extension UIViewController {
    /// Function that will follow the apple documented way of adding a container view controller. Apple's documentation: https://developer.apple.com/documentation/uikit/uiviewcontroller#1652844
    ///
    /// - Parameters:
    ///   - viewController: The view controler you want to add. After addition the incomming UIViewController will be a member of this `UIViewContrllers` `.children` (Swift 4.2) property.
    ///   - view: The view that will serve as the container view. Can be the `UIViewController`'s root `UIView` or any subview.
    ///   - options: The animation option. Defaults to nil.
    public func add(_ viewController: UIViewController, toContainer view: UIView, _ options: UIView.AnimationOptions? = nil) {
        self.addChild(viewController)
        UIView.transition(with: view, duration: 0.2, options: options ?? .transitionCrossDissolve, animations: {
            viewController.view.frame = view.bounds
            view.addSubview(viewController.view)
        }, completion: nil)
        viewController.didMove(toParent: self)
    }
    
    /// Function that will follow the apple documented way of removing a container view controller. Apple's documentation: https://developer.apple.com/documentation/uikit/uiviewcontroller#1652844
    ///
    /// - Parameter controller: The view controller to remove. The view controller must be a member of this `UIViewContrllers` `.children` (Swift 4.2) property.
    public func remove(viewController controller: UIViewController) {
        controller.willMove(toParent: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParent()
    }
    
    /// Convenience function for removing all child views of this `UIViewController`
    ///
    /// - Parameter allChildViewControllers: The `.childern` (Swift 4.2) property of this `UIViewController` if you want to remove them all. Otherwise some sub array.
    public func remove(theseViewControllers: [UIViewController]) {
        for VC in theseViewControllers {
            self.remove(viewController: VC)
        }
    }
}
