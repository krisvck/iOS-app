//
//  LaunchScreenController.swift
//  ToDo
//
//  Created by Krist Veruari on 12/3/19.
//  Copyright © 2019 Krist Veruari. All rights reserved.
//

//import Foundation
import UIKit

class LaunchScreenController : UIViewController {
    
    @IBOutlet fileprivate weak var loadingLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2.0, animations: {
            self.loadingLabel.transform = CGAffineTransform(translationX: 0, y:
                self.view.bounds.size.height)
            self.view.backgroundColor = UIColor.white
        }) { (success) in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateInitialViewController()
            UIApplication.shared.keyWindow?.rootViewController = vc
            
        }
    }
    
}
