//
//  WMTabBarController.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/7.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit

class WMTabBarController: UITabBarController, WMTabBarProtocol {
    internal func publish( btn :UIButton ) {
        let add = AddVC.init(leftItem:true,rightItem:nil)
        let nav = WMNavigationController.init(rootViewController: add)
        self .present(nav, animated: true, completion: nil)

    }

    


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = PublicSet.randomColor()
        let  tabbar : WMTabBar = WMTabBar.init()
        
        tabbar.tabBarDelegate=self;
        tabbar.isTranslucent = false
        
        self.setValue(tabbar, forKey: "tabBar")
        self.addChildVC(HomeVC.self, "home_mormal", "home_select")
        self.addChildVC(UIViewController.self, "platform_normal", "platform_select")
        self.addChildVC(UIViewController.self, "find_normal", "find_select")
        self.addChildVC(UIViewController.self, "my_normal", "my_select")

        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        
    }
//     init()
//    {
//        super.init(nibName: nil, bundle: nil)
//        
//       
//        
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
    func addChildVC(_ vc:AnyClass, _ imageName:String, _ selectImageName:String)
    {
        let controller = (vc as! UIViewController.Type).init()
        controller.view.backgroundColor = PublicSet.randomColor()
        controller.tabBarItem.image=UIImage.init(named: imageName)
        controller.tabBarItem.selectedImage=UIImage.init(named: selectImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let nav = WMNavigationController.init(rootViewController: controller)
        
        self.addChildViewController(nav)
    }

}

@objc protocol WMTabBarProtocol:UITabBarDelegate {
    
     @objc func publish(btn:UIButton)
    
}
class WMTabBar: UITabBar {
    
     var plusBtn : UIButton?
    
     weak var tabBarDelegate : WMTabBarProtocol?
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.plusBtn=UIButton.init()
        self.plusBtn?.addTarget(self, action: #selector(addClick(_:)), for: UIControlEvents.touchUpInside)
        self.plusBtn?.setImage(UIImage.init(named: "fabu"), for: UIControlState.normal)
        self.plusBtn?.setImage(UIImage.init(named: "1+"), for: UIControlState.highlighted)
        self .addSubview(self.plusBtn!)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addClick(_ btn:UIButton) {
        
        if (self.delegate?.responds(to:#selector(WMTabBarProtocol.publish(btn:))))!
        {
            self.tabBarDelegate?.publish(btn: btn)
            
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let count = 5
        let width = self.mj_w/CGFloat.init(count)
        
        self.plusBtn?.mj_x=width*2.0
        self.plusBtn?.mj_y=0
        self.plusBtn?.mj_w = width
        self.plusBtn?.mj_h = self.mj_h
        
        
        var tabBarButtonIndex : CGFloat = 0.0
        
        for index  in 0..<self.subviews.count {
            let view = self.subviews[index]
            
            print(NSStringFromClass(type(of: view)))
            if NSStringFromClass(type(of: view))=="UITabBarButton"
            {
                view.mj_x = tabBarButtonIndex * width
                view.mj_y=6
                view.mj_h=self.mj_h
                view.mj_w=width
                tabBarButtonIndex += 1
                
                if tabBarButtonIndex==2
                {
                     tabBarButtonIndex += 1
                }
                
            }
        }
        
        
        
    }
    
}
