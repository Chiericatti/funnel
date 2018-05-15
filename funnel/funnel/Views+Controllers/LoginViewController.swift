//
//  LoginViewController.swift
//  funnel
//
//  Created by Drew Carver on 5/15/18.
//  Copyright © 2018 Rodrigo Sagebin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var funnelAppLoadingView: UIView!
    @IBOutlet weak var funnelTitleView: UIView!
    @IBOutlet weak var funnelTwoLabel: UILabel!
    @IBOutlet weak var funnelThreeLabel: UILabel!
    
    @IBOutlet weak var userSignedInView: UIView!
    @IBOutlet weak var userSignUpView: UIView!
    @IBOutlet weak var userUsernameTextField: UITextField!
    @IBOutlet weak var userFirstNameTextField: UITextField!
    @IBOutlet weak var userLastNameTextField: UITextField!
    @IBOutlet weak var userEmailAddressTextField: UITextField!

    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.funnelAppLoadingView.isHidden = false
        self.funnelTitleView.isHidden = true
        self.userSignUpView.isHidden = true
        self.userSignedInView.isHidden = true
        
        // Fetch User from MC
        
//        DispatchQueue.main.async {
//            if successly pulled user {
//                self.performSegue(withIdentifier: "fromSignedInVCToMainVC", sender: nil)
//            }
            
//            if unsuccessful {
//            self.userAccountCheckView.isHidden = true
//            self.funnelAppLoadingView.isHidden = true
//            self.userAccountCheckView.isHidden = true
//            self.userSignUpView.isHidden = false
//            }
//        }
    }
    
    
    // MARK: - Actions
    @IBAction func userSignUpButtonPressed(_ sender: UIButton) {
        guard let userName = userUsernameTextField.text, !userName.isEmpty,
            let firstName = userFirstNameTextField.text, !firstName.isEmpty,
            let lastName = userLastNameTextField.text, !lastName.isEmpty,
            let emailAddress = userEmailAddressTextField.text, !emailAddress.isEmpty
            else { return }
        
        
        
        // Create User from MC
        
//        if success {
//            DispatchQueue.main.async {
//                self.performSegue(withIdentifier: "fromLoginVCToMainVC", sender: nil)
//            }
        
        
//        }
    }
    
    
    
    @IBAction func LoadButtonPressed(_ sender: UIButton) {
        self.funnelAppLoadingView.isHidden = false
        self.funnelTitleView.isHidden = true
        self.userSignUpView.isHidden = true
        self.userSignedInView.isHidden = true
        
        funnelTwoLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        funnelThreeLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }
    
    @IBAction func SignUpPressed(_ sender: UIButton) {
        self.funnelAppLoadingView.isHidden = true
        self.funnelTitleView.isHidden = false
        self.userSignUpView.isHidden = false
        self.userSignedInView.isHidden = true
    }
    
    @IBAction func SignInPressed(_ sender: UIButton) {
        self.funnelAppLoadingView.isHidden = true
        self.funnelTitleView.isHidden = false
        self.userSignUpView.isHidden = true
        self.userSignedInView.isHidden = false
    }
}