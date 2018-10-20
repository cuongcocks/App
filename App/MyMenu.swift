//
//  MyMenu.swift
//  App
//
//  Created by nguyen cuong on 2018/10/13.
//  Copyright © 2018 nguyen cuong. All rights reserved.
//

import UIKit

extension UIColor{
    convenience  init(hex:String) {
        let scanner = Scanner(string:hex)
        scanner.scanLocation = 0
        var rgbValue : UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}


class MyMenu: UIViewController {
    
    //name
    @IBOutlet weak var btnN5: UIButton!
    @IBOutlet weak var btnN4: UIButton!
    @IBOutlet weak var btnN3: UIButton!
    @IBOutlet weak var btnN2: UIButton!
    @IBOutlet weak var btnN1: UIButton!

    let N5:String = "N5"
    let N4:String = "N4"
    let N3:String = "N3"
    let N2:String = "N2"
    let N1:String = "N1"
    
    let myGreen:String = "028401"
    let myRed:String = "ff8000"
    var status:String = ""
    
    //action
    @IBAction func btnN5(_ sender: UIButton) {
        //btnN5.backgroundColor = UIColor.red
        status = N5
        changeColor(status: status)
    }
    @IBAction func btnN4(_ sender: UIButton) {
        status = N4
        changeColor(status: status)
    }
    @IBAction func btnN3(_ sender: UIButton) {
        status = N3
        changeColor(status: status)
    }
    @IBAction func btnN2(_ sender: UIButton) {
        status = N2
        changeColor(status: status)
    }
    @IBAction func btnN1(_ sender: UIButton) {
        status = N1
        changeColor(status: status)
    }
    
    private func changeColor (status:String){
        switch status {
        case N5:
            btnN5.backgroundColor = UIColor(hex: myRed)
            btnN4.backgroundColor = UIColor(hex: myGreen)
            btnN3.backgroundColor = UIColor(hex: myGreen)
            btnN2.backgroundColor = UIColor(hex: myGreen)
            btnN1.backgroundColor = UIColor(hex: myGreen)
            break
        case N4:
            btnN4.backgroundColor = UIColor(hex: myRed)
            btnN5.backgroundColor = UIColor(hex: myGreen)
            btnN3.backgroundColor = UIColor(hex: myGreen)
            btnN2.backgroundColor = UIColor(hex: myGreen)
            btnN1.backgroundColor = UIColor(hex: myGreen)
            break
        case N3:
            btnN3.backgroundColor = UIColor(hex: myRed)
            btnN5.backgroundColor = UIColor(hex: myGreen)
            btnN4.backgroundColor = UIColor(hex: myGreen)
            btnN2.backgroundColor = UIColor(hex: myGreen)
            btnN1.backgroundColor = UIColor(hex: myGreen)
            break
        case N2:
            btnN2.backgroundColor = UIColor(hex: myRed)
            btnN5.backgroundColor = UIColor(hex: myGreen)
            btnN4.backgroundColor = UIColor(hex: myGreen)
            btnN3.backgroundColor = UIColor(hex: myGreen)
            btnN1.backgroundColor = UIColor(hex: myGreen)
            break
        case N1:
            btnN1.backgroundColor = UIColor(hex: myRed)
            btnN5.backgroundColor = UIColor(hex: myGreen)
            btnN4.backgroundColor = UIColor(hex: myGreen)
            btnN3.backgroundColor = UIColor(hex: myGreen)
            btnN2.backgroundColor = UIColor(hex: myGreen)
            break
        default:
                break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
