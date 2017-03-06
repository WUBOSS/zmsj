//
//  RequestTool.swift
//  zmsjWorld
//
//  Created by zhanshu1 on 2017/3/6.
//  Copyright © 2017年 zhanshu1. All rights reserved.
//

import UIKit
import AFNetworking
import MJExtension
let TIME_NETOUT=20.0
let kApiValueKey="1234560"
let kApiKey="key"
typealias SuccessBlock=(_ dataArray:NSMutableArray?, _ code:Int,_ error:String,_ status:String,_ responseobject:Dictionary<String, Any>)->Void
typealias FailBlock=(_ error:Error)->Void
enum HTTPRequestMethod {
    case POST
    case GET
    case PUT
    case DELETE
}
class RequestTool: NSObject {
    
    static var httpManager: AFHTTPSessionManager  {
        
        //struct MyStatic{
        let instance :AFHTTPSessionManager = AFHTTPSessionManager.init()

       // }
        
        instance.requestSerializer.httpShouldHandleCookies=true
        instance.requestSerializer = AFHTTPRequestSerializer.init()
        instance.responseSerializer = AFJSONResponseSerializer.init()
        instance.requestSerializer.timeoutInterval=TIME_NETOUT
        
        instance.requestSerializer.setValue(NSString.init(format:"iOS-%@",Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! CVarArg) as String , forHTTPHeaderField: "MM-Version")
        instance.requestSerializer.setValue("application/x-www-form-urlencoded;charset=utf8", forHTTPHeaderField: "Content-Type")
        instance.requestSerializer.setValue("application/json;charset=UTF-8", forHTTPHeaderField: "Accept")
        
        
        
        
        instance.responseSerializer.acceptableContentTypes = ["application/json", "text/json","text/html", "text/plain"]  //[NSSet setWithObjects:@"application/json", @"text/json",@"text/html", @"text/plain",nil];
        
        
       return instance
        
    }
    
    static func request(httpMethod:HTTPRequestMethod, urlSring url:String,  param: NSMutableDictionary?, backModel:AnyClass?, resultKey:String?, success:SuccessBlock?, fail:FailBlock?,showHud:Bool)
    {
        param?["kApiKey"]=kApiValueKey
        
    
        if httpMethod==HTTPRequestMethod.POST
        {
            httpManager.post(base_url+url, parameters: param, progress: { (progress) in
                
            }, success: { (dataTask, any) in
                let dic = any as? Dictionary<String, Any>
    
                let state :String = dic?["state"] as! String
                let code : String = dic?["code"] as! String
                let error :String = dic?["error"] as! String
                var data: NSMutableArray?
                if let _ = resultKey
                {
                    
                
                    data = backModel?.mj_objectArray(withKeyValuesArray: dic?[resultKey!])
                    
                }
                
                success?(data,Int.init(code)!,error,state,dic!);
            
                
                
                
            }, failure: { (dataTask, error) in
                
            })
            
        }
        else
        {
            
        }
        
        
    }
    
   
}
