//
//  DataManger.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/6.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit
import Foundation
class DataManger: NSObject {

    static let kUserName="userLogion_name"
     static let kUserPassword="userLogion_password"
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
}
