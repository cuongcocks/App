//
//  ExamViewController.swift
//  App
//
//  Created by nguyen cuong on 2018/10/08.
//  Copyright © 2018 nguyen cuong. All rights reserved.
//

import UIKit

class ExamViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        menu(vc: self)
        // Do any additional setup after loading the view.
    }
    
    func menu(vc: UIViewController) {
        let myMenu = MyMenu(nibName : "MyMenu" , bundle : nil)
        vc.view.addSubview(myMenu.view)
        vc.addChild(myMenu)
    }


}
