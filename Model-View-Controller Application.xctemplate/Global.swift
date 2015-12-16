//
// Global.swift
//

import UIKit

class Global : NSObject {
    
    let margin: CGFloat = 40.0
    var resolution: String?
    
    //singleton
    static let sharedInstance = Global()
    
    override init() {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth  = Int(screenSize.width)
        let screenHeight = Int(screenSize.height)
        resolution = String(format:"%dx%d", screenWidth, screenHeight)
    }
    
}