//
//  WMNavigationController.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/3.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import Foundation
class WMNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
    override class func initialize()
    {
        let navBar = UINavigationBar.appearance();
        var dic: [String:Any] = [:];
    
        dic[NSForegroundColorAttributeName]=UIColor.white
        navBar.barTintColor = PublicSet.navBackColor()
        dic[NSFontAttributeName]=UIFont.systemFont(ofSize: 17)
        navBar.titleTextAttributes=dic
        
        let item=UIBarButtonItem.appearance()
        var textAttrs: [String:Any] = [:]
       
       textAttrs[NSForegroundColorAttributeName]=PublicSet.navBackColor()
        
        
        textAttrs[NSFontAttributeName] = UIFont.systemFont(ofSize: 17);
        item.setTitleTextAttributes(textAttrs, for: UIControlState.normal)
        item.setTitleTextAttributes(textAttrs, for: UIControlState.highlighted)

        
        
        
    }
    
    
}
