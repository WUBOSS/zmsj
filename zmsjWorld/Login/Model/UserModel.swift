//
//  UserModel.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/7.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit


class UserModel: NSObject {

    var  access_token : String?
    var  isMustInterest : Bool?
    var  isMustTrade : Bool?
    var  is_set_paypassword : Bool?
    var  balance : String?
    var  birth : String?
    var  gender : String?
    var  head_portrait : String?
    var  headPortrait : String?
    var  interests : NSMutableArray?
    var  titles : NSMutableArray?
    var  trades : NSMutableArray?
    var  memberTitleMaps : NSMutableArray?
    var  plan_num : String?
    var  point : String?
    var  recommend_code : String?
    var  un_read_message_num : String?
    var  no_disturbing : String?
    var  stock : String?
    var  vote_num : String?
    var  bid_num : String?
    var  is_system : String?
    var  sn : String?
    var  is_stockholder : String?
    var  username : String?
    
//    init(coder aDecoder:NSCoder!){
//        
//         super.init()
//        self .mj_decode(aDecoder)
//    
//            
//        
//    }
    func encodeWithCoder(aCoder:NSCoder!){
        self .mj_encode(aCoder)
    }
}
