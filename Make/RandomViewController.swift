//
//  RandomViewController.swift
//  Make
//
//  Created by Julian Dragoi on 17/11/2015.
//  Copyright © 2015 Julian Dragoi. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let sw1 = Swipe1ViewController(nibName:"Swipe1ViewController", bundle: nil)
        
        self.addChildViewController(sw1)
        self.scrollView.addSubview(sw1.view)
        sw1.didMove(toParentViewController: self)
        
        
        let sw2 = Swipe2ViewController(nibName:"Swipe2ViewController", bundle: nil)
        
        
        var frame1 = sw2.view.frame
        frame1.origin.x = self.view.frame.size.width
        sw2.view.frame = frame1
        self.addChildViewController(sw2)
        self.scrollView.addSubview(sw2.view)
        sw2.didMove(toParentViewController: self)
        
        let sw3 = Swipe3ViewController(nibName:"Swipe3ViewController", bundle: nil)
        
        
        var frame2 = sw3.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        sw3.view.frame = frame2
        self.addChildViewController(sw3)
        self.scrollView.addSubview(sw3.view)
        sw3.didMove(toParentViewController: self)
        
        let sw4 = Swipe4ViewController(nibName:"Swipe4ViewController", bundle: nil)
        
        
        var frame3 = sw4.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        sw4.view.frame = frame3
        self.addChildViewController(sw4)
        self.scrollView.addSubview(sw4.view)
        sw4.didMove(toParentViewController: self)
        
        
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 4, height: self.view.frame.size.height)
        
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
}
