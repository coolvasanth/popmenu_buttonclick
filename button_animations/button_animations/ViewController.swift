//
//  ViewController.swift
//  button_animations
//
//  Created by Vasanth on 3/6/17.
//  Copyright © 2017 Vasanth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var menu: UIButton!
    
    @IBOutlet weak var item1: UIButton!
    
    @IBOutlet weak var item2: UIButton!
    
    @IBOutlet weak var item3: UIButton!
    
    
    var item1center:CGPoint!
    var item2center:CGPoint!
    var item3center:CGPoint!
    
    var x:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        item1center = item1.center
        item2center = item2.center
        item3center = item3.center
        
        
        item1.center = menu.center
        item2.center = menu.center
        item3.center = menu.center
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func open_menu(_ sender: AnyObject) {
        
        if x == true {
            
            UIView.animate(withDuration: 0.3,animations: {
                
                self.item1.alpha = 1
                self.item2.alpha = 1
                self.item3.alpha = 1
                
                self.item1.center = self.item1center
                self.item2.center = self.item2center
                self.item3.center = self.item3center
                
                
            })
            x = false
            
        }else {
            
            self.item1.alpha = 0
            self.item2.alpha = 0
            self.item3.alpha = 0
            
            self.item1.center = self.menu.center
            self.item2.center = self.menu.center
            self.item3.center = self.menu.center
        
        x = true
        }
        
        
        
    }
    


}

