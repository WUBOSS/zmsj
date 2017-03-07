//
//  LoginVC.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/6.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit

class LoginVC: WMViewController {

    @IBOutlet weak var mline: UILabel!
    @IBOutlet weak var mKeyInput: UITextField!
    @IBOutlet weak var mPhoneInput: UITextField!
    
    @IBOutlet weak var mloginbgView: UIView!
    @IBOutlet weak var mRegisterBtn: UIButton!
    @IBOutlet weak var mlogionBtn: UIButton!
    @IBOutlet weak var mForgetKeyBtn: UIButton!
    @IBOutlet weak var mRemmberKeyBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="登入"
        
        self.setupView()
        self.setupValue()
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
      
        
        
        // Dispose of any resources that can be recreated.
    }
    //MARK:忘记密码
    @IBAction func forgetPassWord(_ sender: UIButton) {
        
        
    }
    //MARK:记住密码
    @IBAction func remmberPassWord(_ sender: UIButton) {
        self.mRemmberKeyBtn.isSelected = !self.mRemmberKeyBtn.isSelected
        
    }
    //MARK:登入
    @IBAction func login(_ sender: UIButton) {
        
        let dic=NSMutableDictionary.init()
        
        dic["username"]=self.mPhoneInput.text
        dic["enPassword"]=self.mKeyInput.text?.aes256_encrypt()
        dic["cid"]=self.mPhoneInput.text
        dic["name"]=UIDevice.current.model
        dic["platform"]="IOS"
        dic["systemName"]=UIDevice.current.systemVersion
        
        RequestTool.request(httpMethod: HTTPRequestMethod.POST, urlSring: login_url, param: dic, backModel: NSMutableArray.self, resultKey: nil, success: { (dataArray, code, error, status,responseobject) in
        
            
            
            if code==1
            {
                let memberDic = responseobject["member"];
                
                let user : UserModel = UserModel.mj_object(withKeyValues: memberDic)
                
                
                if  let _ = user.access_token
                {
                    
                    DataManger.SaveUserToken(user.access_token!)
                    (UIApplication.shared.delegate as! AppDelegate).setupRootController(false)
                    
                }
               
                
          
        }
            
            
        }, fail: { (error) in
            
        }, showHud: true)
    }
    //MARK:注册
    @IBAction func signUp(_ sender: UIButton) {
        
    }
    
    //MARK:设置view
    
    func setupView() {
        self.mline.backgroundColor=PublicSet.ViewLineColor
        self.mloginbgView.backgroundColor=UIColor.white
        self.mRemmberKeyBtn.setImage(UIImage.init(named:"jizhumima"), for: UIControlState.normal)
        self.mRemmberKeyBtn.setImage(UIImage.init(named: "jizhumima—xuanzhong"), for: UIControlState.selected)
        self.mForgetKeyBtn.setTitleColor(PublicSet.navColor, for: UIControlState.normal)
        self.mlogionBtn.backgroundColor=PublicSet.navColor
        self.mlogionBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        self.mlogionBtn.layer.cornerRadius = 2;
        self.mlogionBtn.layer.masksToBounds = true;
        
        
    }
    //MARK:设置记住密码
    func setupValue() {
     
        if let userName=DataManger.loadUserName(){
            self.mPhoneInput.text=userName
            self.mRemmberKeyBtn.isSelected=true
        }
        if let passWord=DataManger.loadUserPassword()
        {
            self.mKeyInput.text=passWord
        }
    }
   

}
