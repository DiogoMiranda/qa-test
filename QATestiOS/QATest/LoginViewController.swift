//
//  LoginViewController.swift
//  QATest
//
//  Created by Eduardo Viegas on 6/14/16.
//  Copyright © 2016 Youse. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailErrorLabel: UILabel!
    
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    
    fileprivate let validEmails = ["youser1@youse.com.br", "youser2@youse.com.br", "youser3@youse.com.br"]
    fileprivate let validPasswords = ["12345678"]
    
    
    // MARK: UIViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if "toDetail" == segue.identifier {
            prepareForDetailSegue(segue)
        }
    }
    
    // MARK: Private
    
    fileprivate func showErrorMessage(_ message: String, onLabel label: UILabel) {
        label.text = message
    }
    
    fileprivate func showPasswordFlow() {
        self.passwordView.isHidden = false
        self.emailView.isHidden = true
    }
    
    fileprivate func clearErrorMessages() {
        self.emailErrorLabel.text = ""
        self.passwordErrorLabel.text = ""
    }
    
    fileprivate func prepareForDetailSegue(_ segue: UIStoryboardSegue) {
        guard let navigationController = segue.destination as? UINavigationController,
            let detailViewController = navigationController.topViewController as? DetailViewController
            else {
                return
        }
        
        detailViewController.fillDetails(self.emailTextField.text!)
    }
    
    fileprivate func performSegueAfterRandomDelay() {
        let delay = TimeInterval(arc4random_uniform(4));
        let delayInNanoseconds = delay * Double(NSEC_PER_SEC)
        let dispatchTime = DispatchTime.now() + Double(Int64(delayInNanoseconds)) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.performSegue(withIdentifier: "toDetail", sender: self)
        }
        
    }
    
    // MARK: IBActions
    
    @IBAction func verifyEmail(_ sender: AnyObject) {
        clearErrorMessages()
        
        if validEmails.contains(emailTextField.text!) {
            showPasswordFlow()
        } else {
            showErrorMessage("Email Inválido", onLabel: self.emailErrorLabel)
        }
    }
    
    @IBAction func verifyPassword(_ sender: AnyObject) {
        clearErrorMessages()
        
        if validPasswords.contains(passwordTextField.text!) {
            performSegueAfterRandomDelay()
        } else {
            showErrorMessage("Senha Inválida", onLabel: self.passwordErrorLabel)
        }
    }
}
