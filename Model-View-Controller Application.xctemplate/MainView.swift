//
// MainView.swift
//

import UIKit

class MainView: UIView {

    let labelHelloWorld = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup(frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(frame: CGRect){
        backgroundColor = UIColor.whiteColor()
        
        labelHelloWorld.frame = CGRectMake(0, 0, frame.width,  Global.sharedInstance.margin)
        labelHelloWorld.center = CGPointMake(frame.width/2,frame.height/2)
        labelHelloWorld.textAlignment = NSTextAlignment.Center
        labelHelloWorld.font = UIFont.systemFontOfSize(36.0)
        labelHelloWorld.textColor = UIColor.redColor()
        self.addSubview(labelHelloWorld)
    }
    
}