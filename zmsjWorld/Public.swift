//
//  Public.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/3.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit

class PublicSet: NSObject {
    
     static let ViewBgColor = PublicSet.setColor(240, 240, 240, 1)
     static let navColor = PublicSet.setColor(255, 86, 3, 1)
     static let ViewLineColor = PublicSet.setColor(231, 231, 231, 1)
    
    
    static func setColor(_ R:CGFloat,_ G:CGFloat,_ B:CGFloat,_ alpha:CGFloat)->UIColor
    {
        return UIColor.init(red: R/255.0, green: G/255.0, blue: B/255.0, alpha: alpha)
        
        
    }
    static func navBackColor()->UIColor
    {
        return self.setColor(255, 86, 3, 1)
    }
    
    
}
//let SetColor(R,G,B,A)=UIColor.init(red: R, green: G, blue: B, alpha: A)
//let NavBackColor=SetColor(255,86,3,1)
