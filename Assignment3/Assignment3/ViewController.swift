//
//  ViewController.swift
//  Assignment3
//
//  Created by Kris Veruari on 9/17/19.
//  Copyright © 2019 Boise State. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var programmaticLabel:UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logButton(_ sender: Any) {
        let flavor1 = firstTextField.text
        let flavor2 = secondTextField.text
    
    
        //outputLabel.text = "You picked: \(flavor1!) and \(flavor2!)"
        
        
        if( flavor1 != nil && flavor2 != nil ){
            let outputString = "You Picked: \(flavor1!) and \(flavor2!)"
            
            var logArray = UserLogController.loggingList()
            logArray.append(outputString)
            outputLabel.text = logArray[logArray.count-1]
            print(logArray)
            print(UserLogController.loggingList())
            // Log twice
            UserLogController.logNewEvent(newEventToLog: outputString)
        }
        else{
            print("firstTextfield and/or secondTextfield have values of nil")
        }
    }
}


