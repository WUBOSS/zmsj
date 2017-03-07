//
//  AddVC.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/7.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit

class AddVC: WMViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "发布"
               
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func back(_: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: nil)
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
