//
//  ProfileVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    //iboutlets
    
//    @IBOutlet weak var userName: UILabel!
//    @IBOutlet weak var email: UILabel!
//    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

    }
    
    //ibactions
    @IBAction func logOutPressed(_ sender: Any) {
        UserDataService.instance.logOutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        performSegue(withIdentifier: "tologin", sender: (Any).self)
        
    }
    
 
    
    
    func setUpView() {
        userName.text = UserDataService.instance.name
        email.text = UserDataService.instance.email
    }
    

}
