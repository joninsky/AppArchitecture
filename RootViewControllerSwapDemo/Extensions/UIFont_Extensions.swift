//
//  UIFont_Extensions.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/24/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit

extension UIFont {
    
    /// Function that will register a new `UIFont` from the provided bundle usign Core Graphics. If the font can't be registered a fatal error is thrown. We throw a fatal error because we want to know right away if our font's don't load. Maybe a more appropriate way is to throw `Error`'s but this removes a lot of optional unwrapping code when using the font's as they can be used as non optional values.
    ///
    /// - Parameters:
    ///   - bundle: The bundle the font file lives in. Defaults to `Bundle.main`
    ///   - fontName: The name of the font file.
    ///   - fontExtension: The extension of the font file
    static public func registerFont(bundle: Bundle? = Bundle.main, fontName: String, fontExtension: String) {
        guard let fontURL = bundle?.url(forResource: fontName, withExtension: fontExtension) else {
            fatalError("Couldn't find font \(fontName)")
        }
        
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            fatalError("Couldn't load data from the font \(fontName)")
        }
        
        guard let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        guard success else {
            fatalError("Error registering font: maybe it was already registered.")
        }
    }
    
    /// Convenience function that will print out all the Font family names and names.
    public func printAllFonts() {
        for font in UIFont.familyNames {
            print("- \(font)")
            let names = UIFont.fontNames(forFamilyName: font)
            for name in names {
                print("  \(name)")
            }
        }
    }
}
