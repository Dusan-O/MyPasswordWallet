//
//  Helper.swift
//  MyPasswordWallet
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import Foundation


class Helper {
    
    static let share = Helper()
    let ud = UserDefaults.standard
    let key = "KEY"
    
    func arrayFromUd() -> [[String: String]] {
        return ud.array(forKey: key) as? [[String: String]] ?? []
    }
    
    func get() -> [Item] {
        var resultArray: [Item] = []
        let array = arrayFromUd()
        array.forEach { dict in
            resultArray.append(Item(dict: dict))
        }
        return resultArray
    }
    
    func add(_ item: Item) {
        var array = arrayFromUd()
        array.append(item.toDict())
        ud.set(array, forKey: key)
    }
    
    func remove(_ item: Item) {
        var array = arrayFromUd()
        if let index = array.firstIndex(where: {$0 == item.toDict()}) {
            array.remove(at: index)
        }
        ud.set(array, forKey: key)
    }
    
}
