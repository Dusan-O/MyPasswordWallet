//
//  Item.swift
//  MyPasswordWallet
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import Foundation

class Item {
    
    var site: String?
    var userName: String?
    var password: String?
    
    private let _siteKey = "site"
    private let _userNameKey = "userName"
    private let _passwordKey = "password"
    
    var safeSite: String {
        return site ?? ""
    }
    
    var safaUserName: String {
        return userName ?? ""
    }
    
    var safePassword: String {
        return password ?? ""
    }
    
    init(site: String?, userName: String?, password: String?) {
        self.site = site
        self.userName = userName
        self.password = password
    }
    
    init(dict: [String: String]) {
        self.site = dict[_siteKey]
        self.userName = dict[_userNameKey]
        self.password = dict[_passwordKey]
    }
    
    func toDict() -> [String: String] {
        var dict: [String: String] = [:]
        if self.site != nil {
            dict[_siteKey] = self.site!
        }
        if self.password != nil {
            dict[_passwordKey] = self.password!
        }
        if self.userName != nil {
            dict[_userNameKey] = self.userName!
        }
        return dict
    }
    
    
    
}
