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
    
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
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
        guard let name = usernameTxt.text, usernameTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    
                    if success {
                        AuthService.instance.createUser(name: name, email: email, avatarColor: self.avatarColor, avatarName: self.avatarName, completion: { (success) in
                            
                            if success {
                                self.performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
                            }
                            
                        })
                    }
                    
                })
            }
            
        }
        
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
        
        
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
}





