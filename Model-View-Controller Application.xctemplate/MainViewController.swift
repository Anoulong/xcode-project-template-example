//
// MainViewController.swift
//

import UIKit

class MainViewController: UIViewController {
    
    var mainView: MainView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = MainView(frame: self.view.frame) as MainView? {
            mainView = view
            self.view = mainView
            log(self.title)
            mainView?.labelHelloWorld.text = "Hello World!"
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

