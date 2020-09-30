//
//  loginService.swift
//  
//
//  Created by HappySanz Tech on 12/09/20.
//


import UIKit


class LoginService {
    
    public func callAPILogin(user_name:String, password:String, onSuccess successCallback: ((_ login: LoginModel) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        APIManager.instance.callAPILogin(
          user_name: user_name, password: password, onSuccess: { (loginData) in
                successCallback?(loginData)
            },
            onFailure: { (errorMessage) in
                failureCallback?(errorMessage)
            }
        )
    }

}
