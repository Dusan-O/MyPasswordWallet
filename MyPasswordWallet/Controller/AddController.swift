//
//  AddController.swift
//  MyPasswordWallet
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import UIKit

class AddController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var siteTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        siteTextField.delegate = self
        mailTextField.delegate = self
        pwdTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        let newItem = Item(
            site: siteTextField.text,
            userName: mailTextField.text,
            password: pwdTextField.text)
        
        Helper.share.add(newItem)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    

}
