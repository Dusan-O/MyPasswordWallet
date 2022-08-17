//
//  DetailController.swift
//  MyPasswordWallet
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import UIKit
import LocalAuthentication

class DetailController: UIViewController {
    
    @IBOutlet weak var siteLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var showHidePwd: UILabel!
    @IBOutlet weak var showSwitch: UISwitch!
    @IBOutlet weak var pwdLabel: UILabel!
    
    var item: Item!
    var context = LAContext()
    var error: NSError?
    var reason: String = "Authentifiez vous pour voir le mot de passe"
    var policy: LAPolicy = .deviceOwnerAuthenticationWithBiometrics
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSwitch.isOn = false
        siteLabel.text = item.safeSite
        userNameLabel.text = item.safaUserName
        pwdLabel.text = item.safePassword
        setLabelSwitch(bool: !showSwitch.isOn)
    }
    
    func setLabelSwitch(bool: Bool) {
        pwdLabel.isHidden = !bool
        showHidePwd.text = !bool ? "Montrer le mot de passe" : "Cacher le mot de passe"
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        setLabelSwitch(bool: sender.isOn)
    }
    


}
