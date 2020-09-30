//
//  loginPresenter.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 12/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

struct loginData {
    
    let user_id: String
    let user_role: String
    let constituency_id: String
    let pugathi_id: String
    let full_name: String
    let phone_number: String
    let email_id: String
    let gender: String
    let address: String
    let picture_url: String
    let statusData: String
    let last_login: String
    let login_count: String
}

protocol LoginView : NSObjectProtocol {
    
    func startLoading()
    func finishLoading()
//    func setEmptyLogin(errorMessage:String)
    func setLoginData(user_id:String,userImage:String,userName:String,userlocation:String)
}

class LoginPresenter {
    
    private let loginService:LoginService
    weak private var loginView : LoginView?
    
    init(loginService:LoginService) {
        self.loginService = loginService
    }
    
    func attachView(view:LoginView) {
        loginView = view
    }
    
    func detachViewClientUrl() {
        loginView = nil
    }
    
    func getLoginData(user_name:String,password:String) {
        self.loginView?.startLoading()
        loginService.callAPILogin(
            user_name: user_name, password: password, onSuccess: { (login) in
                self.loginView?.finishLoading()
//                self.loginView?.setLoginData(user_id: login.user_id!,userImage:login.picture_url!,userName: login.full_name!,userlocation: login.address!)
            },
            onFailure: { (errorMessage) in
//                self.loginView?.setEmpty(errorMessage: errorMessage)
                self.loginView?.finishLoading()

            }
        )
    }
}
