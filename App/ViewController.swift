//
//  ViewController.swift
//  App
//
//  Created by nguyen cuong on 2018/10/06.
//  Copyright © 2018 nguyen cuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    

    @IBAction func btn_Start(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menu(vc: self)
    }
    
    func menu(vc: UIViewController) {
        let myMenu = MyMenu(nibName : "MyMenu" , bundle : nil)
        vc.view.addSubview(myMenu.view)
        vc.addChild(myMenu)
    }

}

