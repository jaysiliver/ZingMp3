//
//  ViewController.swift
//  ZingMp3
//
//  Created by Jay Siliver on 5/25/17.
//  Copyright © 2017 Jay Siliver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var hieunt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo.alpha = 0
        text.alpha = 0
        hieunt.alpha = 0
       
    }
    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated) chua hieu muc dich lam gi ???
        UIView.animate(withDuration: 5, animations: {
        self.logo.alpha = 1
        
        }) {
            (finished) in
            UIView.animate(withDuration: 3, animations: {
            self.text.center = CGPoint(x: self.logo.center.x, y: 100)
                self.text.alpha = 1
            }) { (finished) in
                
                self.text.alpha = 0
                UIView.animate(withDuration: 20, animations: {
                self.hieunt.center = CGPoint(x: self.logo.center.x , y:500)
                self.hieunt.alpha = 1
                })
                
                }
        
        
    }

    }

}

