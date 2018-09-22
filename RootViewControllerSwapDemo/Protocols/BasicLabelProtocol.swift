//
//  BasicLabelProtocol.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit


protocol BasicLabeProtocol {
    var label: UILabel {get set}
    func prepareLabel(withText: String)
}

extension BasicLabeProtocol where Self: UIViewController {
    func prepareLabel(withText: String) {
        self.label.translatesAutoresizingMaskIntoConstraints = false
        self.label.backgroundColor = UIColor.lightGray
        self.label.textAlignment = .center
        self.label.font = UIFont.systemFont(ofSize: 24)
        self.label.text = withText
        
        self.view.addSubview(self.label)
        
        
        self.label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        self.label.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        self.label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.label.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        
        
    }
}
