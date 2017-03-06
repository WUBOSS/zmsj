//
//  ViewController.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/3.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit
import AFNetworking
import MJRefresh
class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton.init(type: UIButtonType.contactAdd)
        
        btn.center = CGPoint.init(x: 150, y: 200)
        self.view.addSubview(btn)
        btn .addTarget(self, action: #selector(click(btn:)), for: UIControlEvents.touchUpInside)
                
        // Do any additional setup after loading the view, typically from a nib.
    }

    func click(btn:UIButton) {
        
        self.navigationController?.pushViewController(UIViewController.init(), animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

