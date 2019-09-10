//
//  ViewController.swift
//  SimpleCalculation
//
//  Created by Kris Veruari on 9/9/19.
//  Copyright © 2019 Boise State. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var interest: UITextField!
    //@IBOutlet weak var payments: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculate(_ sender: Any) {
        let a = (interest.text! as NSString).floatValue
        let b = (amount.text! as NSString).floatValue
        
        let c = a * b
        result.text = "\(c)"
    }
}

