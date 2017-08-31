//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Emanuel Quimper on 2017-08-30.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
        
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let password = passwordTxt.text, passwordTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            
            if success {
                print("regitered user!")
            }
            
        }
        
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
        
        
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
}





