//
//  ViewController.swift
//  dummy
//
//  Created by Leonardo da Silva Menezes on 10/07/20.
//  Copyright © 2020 Leonardo da Silva Menezes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldpassword: UITextField!
    @IBOutlet weak var buttonSignin: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSignin.addTarget(self, action: #selector(signIn), for: .touchDown)
        textFieldUsername.delegate = self
        textFieldpassword.delegate = self
    }
    
    
    @objc func signIn(sender : UIButton!){
           let username : String = textFieldUsername.text!;
           let password : String = textFieldpassword.text!;
           
           if username.count >= 1 && password == "123456789"  {
                performSegue(withIdentifier: "showLoggedScreen", sender: username)
           }else{
               let alert = UIAlertController(title: "Message", message: "Wrong password!", preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "ok", style: .default, handler:nil))
               self.present(alert, animated: true);
           }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLoggedScreen"{
            let loggedVC = segue.destination as! LoggedUserVC
            loggedVC.message = textFieldUsername.text!
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

