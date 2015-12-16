//
// UIView+Utilities.swift
//

import UIKit


extension UIView  {
    
    //bounds
    var boundsX: CGFloat { return self.bounds.origin.x }
    var boundsY: CGFloat { return self.bounds.origin.y }
    var boundsW: CGFloat { return self.bounds.size.width }
    var boundsH: CGFloat { return self.bounds.size.height }
    
    var bX: CGFloat { return self.bounds.origin.x }
    var bY: CGFloat { return self.bounds.origin.y }
    var bW: CGFloat { return self.bounds.size.width }
    var bH: CGFloat { return self.bounds.size.height }
    
    //frame
    var frameX: CGFloat { return self.frame.origin.x }
    var frameY: CGFloat { return self.frame.origin.y }
    var frameW: CGFloat { return self.frame.size.width }
    var frameH: CGFloat { return self.frame.size.height }
    
    var fX: CGFloat { return self.frame.origin.x }
    var fY: CGFloat { return self.frame.origin.y }
    var fW: CGFloat { return self.frame.size.width }
    var fH: CGFloat { return self.frame.size.height }
    
    //ratio
    var ratio: CGFloat { return self.bW/self.bH }
    
    //relative
    var left: CGFloat   { return self.frame.origin.x }
    var top: CGFloat    { return self.frame.origin.y }
    var right: CGFloat  { return self.frame.origin.x + self.frame.size.width }
    var bottom: CGFloat { return self.frame.origin.y + self.frame.size.height }
    
    //batch remove
    func removeSubviews() {
        for subView in self.subviews {
            subView.removeFromSuperview();
        }
    }
    
    /*
    TODO:make it work with swift someday
    //findFirstResponder
    func findFirstResponder() -> (UIView) {
    if (self.isFirstResponder == true) { return self }
    
    for subView in self.subviews {
    var responder: UIView = subView.findFirstResponder()
    if (responder) return responder
    }
    
    return nil;
    }
    */
}
