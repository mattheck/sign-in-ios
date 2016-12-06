//
//  SignInViewController.swift
//  BI-Diagnostic
//
//  Created by Matthew Heckman on 11/30/16.
//  Copyright © 2016 Medullan. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func beginEditing(_ sender: UITextField) {
        moveTextField(textField: sender, distance: -250, up: true)
    }
    
    @IBAction func endEditing(_ sender: UITextField) {
        moveTextField(textField: sender, distance: -250, up: false)
    }
    
    @IBAction func shouldReturn(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func passwordBeginEditing(_ sender: UITextField) {
        moveTextField(textField: sender, distance: -250, up: true)
    }
    
    @IBAction func passwordEndEditing(_ sender: UITextField) {
        moveTextField(textField: sender, distance: -250, up: false)
    }
    
    @IBAction func passwordShouldReturn(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    func moveTextField(textField: UITextField, distance: Int, up: Bool) {
        
        let duration = 0.3
        let movement: CGFloat = CGFloat(up ? distance : -distance)
        
        UIView.beginAnimations("textFieldAnimation", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(duration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
        
    }
}
