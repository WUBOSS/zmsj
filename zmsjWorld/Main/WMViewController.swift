//
//  WMViewController.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/6.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit
class WMViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=PublicSet.ViewBgColor
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
    
}
