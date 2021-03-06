//
//  LeadButtonVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/16/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class LeadButtonVC: UIViewController {

    @IBOutlet weak var logInIndicator: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(LeadButtonVC.userDataDidChange), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
       
        let delayInSeconds = 5.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            
            self.logInIndicator.isHidden = true
            
        }
    }
    
    
    @IBAction func viewProfilePressed(_ sender: Any) {
        if AuthService.instance.isLoggedIn {
            performSegue(withIdentifier: "profileSegue", sender: Any?.self)
        }
    }
    
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            logInIndicator.text = "Logged In Successfully"
        } else {
            print("not logged in succesfully")
        }
    }
    

}
