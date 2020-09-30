//
//  ViewController.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 12/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


//LOGIN URL
//

//For iOS
//https://happysanz.in/gmsv1/apiios/login/
//
//
//PARAMETERS
//
//user_name : mobile or email
//password : password
//device_id : AAAAek2UXuk:APA91bHITvTMoAleO-AnIJIwmcgmZMAsZvmy17LC9eQEfbVQmFTgAZhpqqjpCg0NH8VhVH_7il2r9hCHm_e8XVE6-hDFmHCMwef2qg7QfoxYla_WQlepQXplk_VrgEYdVsD_QkjL91Ih
//mobile_type : 1(android) or 2 (IOS)
//
//-------------------------------
//
//GET AREA LIST URL
//For Android
//https://happysanz.in/gmsv1/apiandroid/listPaguthi/
//For iOS
//https://happysanz.in/gmsv1/apiios/listPaguthi/
//
//PARAMETERS
//
//constituency_id : SAVE constituency_id VALUE FROM LOGIN SUCCESS
//
//-------------------------------
//
//GET DASHBOARD DETAILS URL
//For Android
//https://happysanz.in/gmsv1/apiandroid/dashBoard/
//For iOS
//https://happysanz.in/gmsv1/apiios/dashBoard/
//
//PARAMETERS
//
//paguthi : SAVE ID VALUE WHEN AREA IS SELECTED
//
//-------------------------------
//
//SEARCH URL
//For Android
//https://happysanz.in/gmsv1/apiandroid/dashBoard_searchnew/
//For iOS
//https://happysanz.in/gmsv1/apiios/dashBoard_searchnew/
//
//PARAMETERS
//
//keyword : SEARCH INPUT WORD
//offset : 0
//rowcount : 50
//
//-------------------------------
//
//STAFF URL
//For Android
//https://happysanz.in/gmsv1/apiandroid/listStaff/
//For iOS
//https://happysanz.in/gmsv1/apiios/listStaff/
//
//PARAMETERS
//
//constituency_id : SAVE constituency_id VALUE FROM LOGIN SUCCESS
//
//-------------------------------
////
