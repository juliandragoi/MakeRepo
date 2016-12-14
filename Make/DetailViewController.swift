//
//  DetailViewController.swift
//  Make
//
//  Created by Julian Dragoi on 30/11/2015.
//  Copyright © 2015 Julian Dragoi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var projectPic: UIImageView!
    
    @IBOutlet weak var adoptProjectButton: UIButton!
    
    var nameString:String?
    var projectPicName:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.projectName.text = nameString
        self.projectPic.image = UIImage(named: projectPicName!)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}
