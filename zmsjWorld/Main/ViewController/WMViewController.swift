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
     init(leftItem:Bool,rightItem:String?)
    {
        //self.init()
        super.init(nibName: nil, bundle: nil)
        if leftItem
        {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "delete_white")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), style: UIBarButtonItemStyle.plain, target: self, action: #selector(back(_:)))
        }
        
        
    }
    convenience init()
    {
       
        self.init(leftItem:false,rightItem:nil)
    }
    func back(_ : UIBarButtonItem)  {
        
       let _ = self.navigationController?.popViewController(animated: true)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
