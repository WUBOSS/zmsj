//
//  HomeVC.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/7.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit

class HomeVC: WMViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     let topLogoView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 30))
     
     let titleView = UIImageView.init(frame: CGRect.init(x: 20, y: 4, width: 30, height: 22))
        
     titleView.contentMode = UIViewContentMode.scaleToFill
     topLogoView.addSubview(titleView)
     let btn = UIButton.init(frame: CGRect.init(x: 70, y: 0, width: ScreenWidth-120, height: 30))
     btn.setTitle("关键字", for: UIControlState.normal)
     btn.titleLabel?.font = UIFont.systemFont(ofSize: 13)
     btn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
     btn.imageEdgeInsets = UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 0)
     btn.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0)
     btn.imageView?.contentMode=UIViewContentMode.scaleAspectFit;
     btn.setTitleColor(LightGrayColor, for: UIControlState.normal)
     btn.setImage(UIImage.init(named: "suosou"), for: UIControlState.normal)
     topLogoView.addSubview(btn)
     btn.adjustsImageWhenHighlighted=false
     btn.adjustsImageWhenDisabled=false
     self.navigationItem.titleView=topLogoView
     btn.backgroundColor=UIColor.white
     btn.layer.cornerRadius=15
      btn.clipsToBounds=true
     titleView.image=UIImage.init(named: "shouye")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
