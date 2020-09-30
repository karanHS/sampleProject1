//
//  APIManger.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 12/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire

let MAIN_URL = "https://happysanz.in/gmsv1/apiios/"

class APIManager: NSObject {
      
      static let instance = APIManager()
      var manager: SessionManager {
          let manager = Alamofire.SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 3.0
          return manager
      }
    
      enum RequestMethod {
          case get
          case post
      }

    enum Endpoint: String {
        case login = "login"
        case list = ""
      }

//MARK: GET LOGIN RESPONSE
func callAPILogin(user_name:String, password:String, onSuccess successCallback: ((_ login: LoginModel) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
    // Build URL
    let url = "https://happysanz.in/gmsv1/apiios/login"
    // Set Parameters
    let parameters: Parameters =  ["user_name": user_name,"password": password,"device_id":GlobalVariables.shared.Devicetoken ,"mobile_type":"2"]
    // call API
    self.createRequestForLogin(url, method: .post, headers: nil, parameters: parameters as? [String : String], onSuccess: {(responseObject: JSON) -> Void in
    // Create dictionary
    print(responseObject)
      
      guard let msg = responseObject["msg"].string, msg == "Login Successfully" else{
          failureCallback?(responseObject["msg"].string!)
          return
    }
      
        //        let user_id = responseObject["userData"]["user_id"].string
        //        let picture_url = responseObject["userData"]["picture_url"].string
        //        let full_name = responseObject["userData"]["full_name"].string
        //        let address = responseObject["userData"]["address"].string
        //
        //        let sendToModel = LoginModel()
        //        sendToModel.user_id = user_id
        //        sendToModel.picture_url = picture_url
        //        sendToModel.full_name = full_name
        //        sendToModel.address = address
//        successCallback?(sendToModel)
        
    },
    onFailure: {(errorMessage: String) -> Void in
        failureCallback?(errorMessage)
     }
   )
}

// MARK: MAKE LOGIN REQUEST
func createRequestForLogin(_ url: String,method: HTTPMethod,headers: [String: String]?,parameters: [String:String]?,onSuccess successCallback: ((JSON) -> Void)?,onFailure failureCallback: ((String) -> Void)?)
{
    manager.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
        print(responseObject)
        
        if responseObject.result.isSuccess
        {
            let resJson = JSON(responseObject.result.value!)
            successCallback?(resJson)
        }
        
        if responseObject.result.isFailure
        {
           let error : Error = responseObject.result.error!
            failureCallback!(error.localizedDescription)
        }
     }
  }
    
    func callAPIStaff(constituency_id : String, onSuccess successCallback: ((_ staffModel: [StaffModel]) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        // Build URL
        let url = "https://happysanz.in/gmsv1/apiios/listStaff"
        
        let parameters: Parameters =  ["constituency_id": "1"]

        // call API
        self.createRequestStaff(url, method: .post, headers: nil, parameters: parameters as? [String : String], onSuccess: {(responseObject: JSON) -> Void in
        // Create dictionary
        print(responseObject)
          
          guard let msg = responseObject["status"].string, msg == "Success" else{
              failureCallback?(responseObject["msg"].string!)
              return
        }
            
        GlobalVariables.shared.staffCount = responseObject["staff_count"].int!
         
          if let responseDict = responseObject["staff_details"].arrayObject
          {
                let staffModel = responseDict as! [[String:AnyObject]]
                // Create object
                var data = [StaffModel]()
                for item in staffModel {
                    let single = StaffModel.build(item)
                    data.append(single)
                }
                // Fire callback
              successCallback?(data)
           } else {
                failureCallback?("An error has occured.")
            }
        },
        onFailure: {(errorMessage: String) -> Void in
            failureCallback?(errorMessage)
        }
      )
    }
    
    // MARK: MAKE STAFF URL REQUEST
    func createRequestStaff(_ url: String,method: HTTPMethod,headers: [String: String]?,parameters: [String:String]?,onSuccess successCallback: ((JSON) -> Void)?,onFailure failureCallback: ((String) -> Void)?)
    {
        manager.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            print(responseObject)
            
            if responseObject.result.isSuccess
            {
                let resJson = JSON(responseObject.result.value!)
                successCallback?(resJson)
            }
            
            if responseObject.result.isFailure
            {
               let error : Error = responseObject.result.error!
                failureCallback!(error.localizedDescription)
            }
        }
    }

  func callAPIconst(constituency_id : String, onSuccess successCallback: ((_ constModel: [constModel]) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        // Build URL
        let url = "https://happysanz.in/gmsv1/apiios/listPaguthi"
        
        let parameters: Parameters =  ["constituency_id": "1"]

        // call API
        self.createRequestConst(url, method: .post, headers: nil, parameters: parameters as? [String : String], onSuccess: {(responseObject: JSON) -> Void in
        // Create dictionary
        print(responseObject)
          
          guard let msg = responseObject["status"].string, msg == "Success" else{
              failureCallback?(responseObject["msg"].string!)
              return
        }
          if let responseDict = responseObject["paguthi_details"].arrayObject
          {
                let staffModel = responseDict as! [[String:AnyObject]]
                // Create object
                var data = [constModel]()
                for item in staffModel {
                    let single = constModel.build(item)
                    data.append(single)
                }
                // Fire callback
              successCallback?(data)
           } else {
                failureCallback?("An error has occured.")
           }
        },
        onFailure: {(errorMessage: String) -> Void in
            (errorMessage)
        }
      )
    }
    
    // MARK: MAKE STAFF URL REQUEST
    func createRequestConst(_ url: String,method: HTTPMethod,headers: [String: String]?,parameters: [String:String]?,onSuccess successCallback: ((JSON) -> Void)?,onFailure failureCallback: ((String) -> Void)?)
    {
        manager.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            print(responseObject)
            
            if responseObject.result.isSuccess
            {
                let resJson = JSON(responseObject.result.value!)
                successCallback?(resJson)
            }
            
            if responseObject.result.isFailure
            {
               let error : Error = responseObject.result.error!
                failureCallback!(error.localizedDescription)
            }
        }
    }
}
