//
//  DataManger.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/6.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit
import Foundation
let kUserName="userLogion_name"
let kUserPassword="userLogion_password"
let KGTCid="GeTui_Cid"
let kUserToken="userToken_name"

class DataManger: NSObject {

    
    static func loadUserName()->String?
    {
//        if let name = UserDefaults.standard.object(forKey: kUserName)
//        {
//            return name as? String
//        }
//        else
//        {
//            return nil
//        }
            return UserDefaults.standard.object(forKey: kUserName) as! String?
        
    }
    static func loadUserPassword()->String?
    {
        return UserDefaults.standard.object(forKey: kUserPassword) as! String?

    }
    static func loadGTuiCid()->String?
    {
        return UserDefaults.standard.object(forKey: KGTCid) as! String?
        
    }
    static func SaveUserToken(_ token:String)
    {
        
        UserDefaults.standard.set(token, forKey: kUserToken)
        UserDefaults.standard.synchronize()
        
    }
    
    
}
