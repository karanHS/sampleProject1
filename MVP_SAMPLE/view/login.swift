//
//  login.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 12/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class login: UIViewController,LoginView {
    
    func setLoginData(user_id: String, userImage: String, userName: String, userlocation: String) {
        
    }
    
    let presenter = LoginPresenter(loginService: LoginService())
    
    @IBOutlet weak var mobileNum: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var activityView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
    }
    
    func startLoading() {
        
        activityView.isHidden = true
        activityView.startAnimating()
    }
    
    func finishLoading() {
        
        activityView.isHidden = false
        activityView.stopAnimating()
    }
    
    func setEmptyLogin(errorMessage: String) {
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        if mobileNum.text!.isEmpty
        {
            displayMyAlertMessage(userMessage: "Plese Enter the Password")
        }
        else if password.text!.isEmpty
        {
            displayMyAlertMessage(userMessage:"Please Enter the Password")
        }
        else
        {
            self.callAPILogin()
            self.performSegue(withIdentifier: "login", sender: nil)
        }
    }
    
    func callAPILogin ()
    {
        presenter.attachView(view: self)
        presenter.getLoginData(user_name: self.mobileNum.text!, password: self.password.text!)
    }

    func displayMyAlertMessage(userMessage:String)  {
        
        let myAlert = UIAlertController(title: "ALERT", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if (segue.identifier == "login") {
            _ = segue.destination as! dashBoard
           }
       }
}
