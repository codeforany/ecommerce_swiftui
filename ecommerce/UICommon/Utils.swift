//
//  Utils.swift
//  ecommerce
//
//  Created by CodeForAny on 22/05/25.
//

import SwiftUI

class Utils {
    class func UDSET (data: Any, key: String) {
        UserDefaults.standard.set(data, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func UDValue (key: String) -> Any {
        return UserDefaults.standard.value(forKey: key) as Any
    }
    
    class func UDValueBool (key: String) -> Any {
        return UserDefaults.standard.value(forKey: key) as? Bool ?? false
    }
    
    class func UDValueTrueBool (key: String) -> Any {
        return UserDefaults.standard.value(forKey: key) as? Bool ?? true
    }
    
    class func UDRemove (key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func getJson(obj: [Any]?) -> Any? {
        if(obj == nil) {
            return nil
        }
        
        for objString in obj! {
            do {
                if let objectData =  (objString as? String)?.data(using: .utf8) {
                    return try JSONSerialization.jsonObject(with: objectData, options: .mutableContainers)
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }
        
        return nil
    }
    
    class func jsonString(obj: Any, prettyPrint: Bool) -> String {
        guard let data = try? JSONSerialization.data(withJSONObject: obj, options: []) else {
            return "{}"
        }
        return String(data: data, encoding: .utf8) ?? "{}"
    }
}

